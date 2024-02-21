//mandelbrot fractal code

// determine number of iterations to run
const int iter = 64;

// this modifies the position of the pattern
float2 c = uv * 3 - float2(2,1.5);

// starting position
float2 z = c;

// draw this pattern
for(int i = 0; i < iter; i++)
{
    //mandel brought formula
    z = float2(z.x * z.x - z.y *z.y, 2 * z.x * z.y) + sin(c + time);
    

    // check if the distance from the center exceeds
    if(length(z) > 2)
    {
        break;
    }
}

float mandelbrot = float(i) / float(iter);

return mandelbrot;
