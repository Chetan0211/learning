import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  connect() {
    
  }

  async search_focused_and_input() {
    let search_autocomplete = document.getElementById('search_autocomplete');
    let search = document.getElementById('search');
    if (search.value != "") {
      search_autocomplete.classList.remove("hidden")

      const response = await fetch(`/autosuggest?query=${search.value}`);
      const catelogue = await response.json();
      search_autocomplete.innerHTML = catelogue
      .map(item => `<div class="cursor-pointer p-2 hover:bg-gray-200" data-action="click->home#selectItem" data-id="${item.id}" id="${item.id}">${item.name}</div>`)
      .join("");
    }
    else {
      setTimeout(() => {
        search_autocomplete.innerHTML = "";
        search_autocomplete.classList.add("hidden");
      }, 200);
    }
  }
  selectItem(event) {
    let search = document.getElementById('search');
    let search_autocomplete = document.getElementById('search_autocomplete');
    search.value = event.currentTarget.innerText;
    search_autocomplete.classList.add("hidden");
    search_autocomplete.innerHTML = "";
  }
  search_blur() {
    let search_autocomplete = document.getElementById('search_autocomplete');
    setTimeout(() => {
      search_autocomplete.classList.add("hidden");
    }, 200);
  }
}
