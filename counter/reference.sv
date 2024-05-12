//referance model class for alu

class reference;
transaction res;
function new();
    reset();
    this.res = new();
endfunction

function void reset();

endfunction

function transaction step(transaction trans);
    this.res = new();
    this.res.A = trans.A;
    this.res.B = trans.B;
    this.res.mode = trans.mode;

    if(this.res.mode == 'b00 )  //addition
        this.res.Y = this.res.A + this.res.B;
     if(this.res.mode == 'b01 )  //subtraction
        this.res.Y = this.res.A - this.res.B;
    else if(this.res.mode == 'b10 )  //increment A
        this.res.Y = this.res.A + 1;
     if(this.res.mode == 'b11 )  //increment B
        this.res.Y = this.res.B + 1;
    
         return this.res;

endfunction

 endclass

