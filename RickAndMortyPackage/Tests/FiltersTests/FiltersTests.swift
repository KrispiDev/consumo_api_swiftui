//
// FiltersTests.swift
//
//
//  Created by Cristian Piedrahita on 15/04/2024.
//

@testable import Filters
import XCTest

final class FiltersTests: XCTestCase {
    func testExample() {
        // Arrange: Preparación de datos y configuración necesaria para la prueba
        let selectedFilters = Filters(status: .active, gender: .male)
        var result: Filters?

        // Act: Ejecución de la funcionalidad que se va a probar
        let expectation = self.expectation(description: "Close expectation")
        let navigator = FiltersWireframe(isPresented: Binding.constant(false)) { filters in
            result = filters
            expectation.fulfill()
        }
        navigator.close(selectedFilters: selectedFilters)
        waitForExpectations(timeout: 1.0, handler: nil)

        // Assert: Verificación de los resultados y comprobación de que sean los esperados
        XCTAssertEqual(result, selectedFilters, "La prueba ha fallado: los filtros seleccionados no coinciden")
    }
}
