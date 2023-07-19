<div class="container mx-auto">
    <h1>Product Filter</h1>

    <form wire:submit.prevent="searching">
        <input wire:model="name" type="search" placeholder="Product Name">
        <input wire:model="price" type="search" placeholder="Product Price">
        <input wire:model="category" type="search" placeholder="Product Category">
        <label for="from">From </label><input wire:model="from" type="date">
        <label for="to">To </label><input wire:model="to" type="date">

        {{--  <input type="submit" value="Search">  --}}
    </form>

    <h1>Pencarian Data</h1>

    <div class="flex justify-center pt-5">
        <table class="border-separate border border-blue-600">
            <thead>
              <tr>
                <th class="border border-blue-600 p-5">No</th>
                <th class="border border-blue-600 p-5">Product Name</th>
                <th class="border border-blue-600 p-5">Product Price</th>
                <th class="border border-blue-600 p-5">Category</th>
              </tr>
            </thead>
            <tbody id="tbody">
              @if (count($products) > 0)
                @foreach ($products as $product)
                <tr>
                  <td class="border border-blue-600 text-center p-2">{{ $product['id'] }}</td>
                  <td class="border border-blue-600 text-center p-2">{{ $product['name'] }}</td>
                  <td class="border border-blue-600 text-center p-2">{{ $product['price'] }}</td>
                  <td class="border border-blue-600 text-center p-2">{{ $product['category'] }}</td>
                </tr>
                @endforeach
              @else
                <tr>
                  <td>Data Tidak Ditemukan</td>
                </tr>
              @endif
            </tbody>
        </table>
    </div>
</div>
