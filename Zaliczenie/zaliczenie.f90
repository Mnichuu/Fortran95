MODULE SortModule
    IMPLICIT NONE
CONTAINS

    SUBROUTINE bubbleSort(arr, n)
        INTEGER, INTENT(IN) :: n
        REAL, DIMENSION(n), INTENT(INOUT) :: arr
        INTEGER :: i, j
        REAL :: temp

        DO i = 1, n-1
            DO j = 1, n-i
                IF (arr(j) > arr(j+1)) THEN
                    temp = arr(j)
                    arr(j) = arr(j+1)
                    arr(j+1) = temp
                END IF
            END DO
        END DO
    END SUBROUTINE bubbleSort

    SUBROUTINE selectionSort(arr, n)
        INTEGER, INTENT(IN) :: n
        REAL, DIMENSION(n), INTENT(INOUT) :: arr
        INTEGER :: i, j, min_idx
        REAL :: temp

        DO i = 1, n-1
            min_idx = i
            DO j = i+1, n
                IF (arr(j) < arr(min_idx)) THEN
                    min_idx = j
                END IF
            END DO
            IF (min_idx /= i) THEN
                temp = arr(i)
                arr(i) = arr(min_idx)
                arr(min_idx) = temp
            END IF
        END DO
    END SUBROUTINE selectionSort

    SUBROUTINE writeArrayToFile(arr, n, filename)
        INTEGER, INTENT(IN) :: n
        REAL, DIMENSION(n), INTENT(IN) :: arr
        CHARACTER(*), INTENT(IN) :: filename
        INTEGER :: i

        OPEN(UNIT=10, FILE=filename, STATUS='REPLACE')
        DO i = 1, n
            WRITE(10, *) arr(i)
        END DO
        CLOSE(UNIT=10)
    END SUBROUTINE writeArrayToFile

    SUBROUTINE readArrayFromFile(arr, n, filename)
        INTEGER, INTENT(IN) :: n
        REAL, DIMENSION(n), INTENT(OUT) :: arr
        CHARACTER(*), INTENT(IN) :: filename
        INTEGER :: i

        OPEN(UNIT=10, FILE=filename, STATUS='OLD')
        DO i = 1, n
            READ(10, *) arr(i)
        END DO
        CLOSE(UNIT=10)
    END SUBROUTINE readArrayFromFile

END MODULE SortModule

PROGRAM SortProgram
    USE SortModule
    IMPLICIT NONE

    INTEGER, PARAMETER :: n = 10
    REAL, DIMENSION(n) :: array
    CHARACTER(50) :: filename
    INTEGER :: i

    ! Inicjalizacja tablicy z losowymi wartosciami
    CALL RANDOM_SEED()
    DO i = 1, n
        CALL RANDOM_NUMBER(array(i))
        array(i) = array(i) * 100.0
    END DO

    PRINT *, 'Original array:'
    PRINT *, array

    ! Ustawianie nazwy pliku
    filename = 'sorted_array.txt'

    ! Sortuj tablice uzywajac bubble sort i wpisz do pliku
    CALL bubbleSort(array, n)
    PRINT *, 'Array sorted with bubble sort:'
    PRINT *, array
    CALL writeArrayToFile(array, n, filename)
    PRINT *, 'Bubble sorted array written to file.'

    ! Ponowna inicjalizacja tablicy z losowymi wartosciami
    DO i = 1, n
        CALL RANDOM_NUMBER(array(i))
        array(i) = array(i) * 100.0
    END DO

    PRINT *, 'New original array:'
    PRINT *, array

    ! Sortuj tablice uzywajac selection sort i wpisz do pliku
    CALL selectionSort(array, n)
    PRINT *, 'Array sorted with selection sort:'
    PRINT *, array
    CALL writeArrayToFile(array, n, filename)
    PRINT *, 'Selection sorted array written to file.'

    ! Czytaj posortowana tablice z pliku
    CALL readArrayFromFile(array, n, filename)
    PRINT *, 'Array read from file:'
    PRINT *, array

END PROGRAM SortProgram