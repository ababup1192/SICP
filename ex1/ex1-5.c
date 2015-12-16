#include <stdio.h>

int infinity();
void test(int, int);

int main(){
    // 無限ループ C言語も適用順評価
    test(0, infinity());
    return 0;
}

void test(int x, int y){
    if(x == 0){
        return;
    }else{
        return;
    }
}

int infinity(){
    while(1);
    return 1;
}
