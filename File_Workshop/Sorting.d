import std.stdio;
import std.container;
import std.algorithm;

int main(){
    string path = "./input";
    File file = File(path, "r");
    int ncase;
    file.readf!"%d\n"(ncase);
    int[] data = new int[ncase];
    for(int i=0; i< ncase;i++){
        file.readf!"%d "(data[i]);
    }
    Array!int arro = Array!int(data);
    int[] arr = arro.data();
    int[] index=new int[arr.length];       
    makeIndex!("a < b")(arr,index);
    index.each!(x => writef("%d ",x+1)),write("\n");
    return 0;
}