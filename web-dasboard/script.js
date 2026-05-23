async function loadUsers() {

    const response = await fetch(
        "http://127.0.0.1:8000/users"
    )

    const users = await response.json()

    const list = document.getElementById(
        "users"
    )

    list.innerHTML = ""

    users.forEach(user => {

        const item = document.createElement(
            "li"
        )

        item.textContent =
            `${user.username} (${user.email})`

        list.appendChild(item)
    })
}
