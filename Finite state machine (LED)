struct State {
  uint32_t out;                // 2-bit output
  uint32_t delay;              // time to delay in 1ms
  const struct State *next[4]; // Next if 2-bit input is 0-3
};
typedef const struct State State_t;

#define Center    &fsm[0]
#define Left      &fsm[1]
#define Right     &fsm[2]

State_t fsm[3]={
  {0x02, 500, { Right, Left,   Right,  Center }},  // Center
  {0x01, 500, { Left,  Center, Right,  Center }},  // Left
  {0x06, 500, { Right, Left,   Center, Center }}   // Right
};


State_t *Spt;  // pointer to the current state
uint32_t Input;
uint32_t Output;
//*Run FSM continuously
//1) Output depends on State (LaunchPad LED)
//2) Wait depends on State
//3) Input (LaunchPad buttons)
//4) Next depends on (Input,State)
 //
int main(void){ uint32_t heart=0;
  Clock_Init48MHz();
  LaunchPad_Init();
  TExaS_Init(LOGICANALYZER);  // optional
  Spt = Center;
  while(1){
    Output = Spt->out;            // set output from FSM
    LaunchPad_Output(Output);     // do output to two motors
    TExaS_Set(Input<<2|Output);   // optional, send data to logic analyzer
    Clock_Delay1ms(Spt->delay);   // wait
    Input = Reflectance_Read(1000);    // read sensors
    Spt = Spt->next[Input];       // next depends on input and state
    heart = heart^1;
    LaunchPad_LED(heart);         // optional, debugging heartbeat
  }
}
