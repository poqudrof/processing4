/*
This is a simple WhiteNoise generator. It can be started with .play(float amp).
In this example it is started and stopped by clicking into the renderer window.
*/

import processing.sound.*;

WhiteNoise noise;
LPF lowPass;

float amp=0.0;

void setup() {
    size(640,360);
    background(255);
    
    // Create the noise generator + filter
    noise = new WhiteNoise(this);
    lowPass = new LPF(this);
    noise.play(0.5);
    lowPass.process(noise, 800);
}      

void draw() {
    lowPass.freq(map(mouseX, 0, 350, 800, 10000));
}
