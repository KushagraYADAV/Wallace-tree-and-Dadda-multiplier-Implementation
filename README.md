# Wallace-tree-and-Dadda-multiplier-Implementation
##  Wallace tree multiplier
A Wallace Tree Multiplier is a specialized hardware circuit used in digital computing to perform binary multiplication efficiently. It is designed to optimize the process of binary multiplication, reducing the complexity and 
resource usage compared to conventional methods.
The Wallace Tree Multiplier groups the partial products into categories based on their bit positions, creating a tree-like structure.
Once grouped, these partial products are added in parallel, reducing the time required for multiplication.
They are faster than traditional multiplication methods like long multiplication or array multiplication.
Below is a pictorial representation of the structure of partial products.

![image](https://github.com/KushagraYADAV/Wallace-tree-and-Dadda-multiplier-Implementation/assets/65351472/decaacdb-3322-4a3a-891a-58ec21b64605)

The formula for the number of steps is given by rj+1=2*floor(rj/3) + rj mod3. Here, r0 is given by the number of bits in the multiplier.

## Dadda multiplier Implementation
Dadda Multipliers employ a sophisticated algorithm to reduce the complexity of binary multiplication, especially for larger numbers.
Unlike traditional methods, they focus on efficiently reducing partial products and minimizing hardware requirements.
They excel in high-speed multiplication, making them valuable in applications where performance is crucial.
While fast and area-efficient, Dadda Multipliers can consume more power than some other multipliers, making power optimization a consideration.
The formula for a sequence in the dadda multiplier is given by dk+1=floor(1.5*dk), where d1=2. For an NxM multiplier, d<min(N, M).
Below is a pictorial representation of the structure of partial products:

 ![image](https://github.com/KushagraYADAV/Wallace-tree-and-Dadda-multiplier-Implementation/assets/65351472/8ab09545-7020-4984-93ea-455e1520e236)
