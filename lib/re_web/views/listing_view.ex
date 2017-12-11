defmodule ReWeb.ListingView do
  use ReWeb, :view

  def render("index.json", %{listings: listings}) do
    %{data: render_many(listings, ReWeb.ListingView, "listing.json")}
  end

  def render("edit.json", %{listing: listing}) do
    %{listing: render_one(listing, ReWeb.ListingView, "listing_edit.json")}
  end

  def render("show.json", %{listing: listing}) do
    %{data: render_one(listing, ReWeb.ListingView, "listing.json")}
  end

  def render("create.json", %{listing: listing}) do
    %{listing: render_one(listing, ReWeb.ListingView, "listing_id.json")}
  end

  def render("listing.json", %{listing: listing}) do
    %{id: listing.id,
      type: listing.type,
      description: listing.description,
      floor: listing.floor,
      price: listing.price,
      area: listing.area,
      rooms: listing.rooms,
      bathrooms: listing.bathrooms,
      garage_spots: listing.garage_spots,
      score: listing.score,
      matterport_code: listing.matterport_code,
      address: %{
        street: listing.address.street,
        street_number: listing.address.street_number,
        neighborhood: listing.address.neighborhood,
        city: listing.address.city,
        state: listing.address.state,
        postal_code: listing.address.postal_code,
        lat: listing.address.lat,
        lng: listing.address.lng
      },
      images: render_many(listing.images, ReWeb.ImageView, "image.json")
    }
  end

  def render("listing_edit.json", %{listing: listing}) do
    %{id: listing.id,
      type: listing.type,
      complement: listing.complement,
      description: listing.description,
      floor: listing.floor,
      price: listing.price,
      area: listing.area,
      rooms: listing.rooms,
      bathrooms: listing.bathrooms,
      garage_spots: listing.garage_spots,
      score: listing.score,
      matterport_code: listing.matterport_code,
      address: %{
        street: listing.address.street,
        street_number: listing.address.street_number,
        neighborhood: listing.address.neighborhood,
        city: listing.address.city,
        state: listing.address.state,
        postal_code: listing.address.postal_code,
        lat: listing.address.lat,
        lng: listing.address.lng
      },
      images: render_many(listing.images, ReWeb.ImageView, "image.json")
    }
  end

  def render("listing_id.json", %{listing: listing}) do
    %{id: listing.id}
  end

end
