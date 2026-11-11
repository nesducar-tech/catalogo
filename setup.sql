-- Pegar en Supabase > SQL Editor > Run
create table products (
  id uuid default gen_random_uuid() primary key,
  name text not null,
  price numeric not null,
  description text,
  image_url text,
  active boolean default true,
  created_at timestamptz default now()
);
alter table products enable row level security;
create policy "ver productos" on products for select using (true);
create policy "admin gestiona" on products for all to authenticated using (true) with check (true);

insert into storage.buckets (id, name, public) values ('productos', 'productos', true);
create policy "ver imagenes" on storage.objects for select using (bucket_id = 'productos');
create policy "subir imagenes" on storage.objects for insert to authenticated with check (bucket_id = 'productos');
create policy "borrar imagenes" on storage.objects for delete to authenticated using (bucket_id = 'productos');
