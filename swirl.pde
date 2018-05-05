size(1024, 768);

int level = 20;
int step = 0;
int[][] directions = {{1, 0}, {0, -1}, {-1, 0}, {0, 1}};

for(int i=0, x = 512, y = 384, l=1;l<level;i++) {
  int d = i % 4;
  if(i % 2 == 0) step += 10;
  int px = x + step * directions[d][0];
  int py = y + step * directions[d][1];
  line(x, y, px, py);
  println(x, y, px, py);
  x = px;
  y = py;
  if(i % 4 == 3) l++;
}
