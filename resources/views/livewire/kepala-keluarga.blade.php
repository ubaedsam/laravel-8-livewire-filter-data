<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body>
    <div class="container">
        <div class="flex justify-content-end mt-4">
            <a href="{{ route('kepala-keluarga.add') }}" class="btn btn-primary mr-4">Tambah Data Kepala Keluarga</a>
            <a href="{{ route('keluarga.add') }}" class="btn btn-primary">Tambah Data Keluarga</a>
        </div>
        <div class="mx-auto mt-4">
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Kepala Keluarga</th>
                    <th scope="col">Keluarga</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach ($kkeluargas as $kkeluarga)
                        <tr>
                            <td>{{ $kkeluarga->id }}</td>
                            <td>{{ $kkeluarga->name }}</td>
                            <td>
                                <ul class="sclist">
                                    @foreach ($kkeluarga->Keluarga as $item)
                                        <li><i class="fa-solid fa-arrow-right"></i> {{ $item->name }}
                                            <a href="{{ route('keluarga.edit',['keluarga_id'=>$item->id]) }}" class="slink"><i class="fa-solid fa-pencil"></i></a>
                                            <a href="#" onclick="confirm('Apakah kamu serius, ingin menghapus data keluarga ini?') || event.stopImmediatePropagation()" wire:click.prevent="deleteKeluarga({{ $item->id }})" class="slink"><i class="fa-solid fa-circle-xmark"></i></a>
                                        </li>
                                    @endforeach
                                </ul>
                            </td>
                            <td>
                                <a href="{{ route('kepala-keluarga.edit', $kkeluarga) }}" class="btn btn-xs btn-warning"><i class="fa-solid fa-pencil"></i></a>
                                <a href="#" onclick="confirm('Apakah anda yakin ingin menghapus data kepala keluarga ini ?') || event.stopImmediatePropagation()" wire:click.prevent="deleteKepalaKeluarga({{ $kkeluarga->id }})" class="btn btn-xs btn-danger" style="margin-left: 10px;"><i class="fa-solid fa-circle-xmark"></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
              </table>
              <div class="text-center">
                {{ $kkeluargas->links() }}
              </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>