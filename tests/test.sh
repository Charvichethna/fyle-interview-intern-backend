def test_get_all_assignments(client):
    response = client.get('/principal/assignments')
    assert response.status_code == 200
    data = response.get_json()
    assert isinstance(data, list)

