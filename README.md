# 🗄️ Laboratório de Consultas e Funções SQL (MySQL)

Repositório prático focado em manipulação de bases de dados relacionais, funções de agregação, tratamento de strings e filtragem avançada de dados utilizando o MySQL.

---

## 🚀 Tópicos Abordados

1. **Exploração de Esquemas e Tabelas:**
   * Utilização de `SHOW DATABASES` e inspeção de estruturas relacionais.
   * Consulta global de registos com `SELECT *`.

2. **Funções de Agregação:**
   * Aplicação de `SUM()`, `AVG()`, `MAX()`, `MIN()` e `COUNT()` para apuração estatística e sumarização de dados populacionais.

3. **Manipulação Avançada de Strings:**
   * **`SUBSTRING_INDEX()`**: Divisão de strings com base em delimitadores específicos (espaços ou barras `/`).
   * **`LENGTH()` e `TRIM()`**: Contagem precisa de caracteres após remoção de espaços em branco indesejados.
   * **`DISTINCT()`**: Filtragem e eliminação de registos duplicados em conjuntos de resultados.

---

## 📂 Estrutura do Repositório

| Ficheiro / Diretório | Descrição |
| :--- | :--- |
| [`queries/consultas_banco_world.sql`](queries/consultas_banco_world.sql) | Script SQL com todas as consultas praticadas e a resolução do desafio. |

---

## 🎯 Desafio Prático: Divisão de Regiões

**Requisito:** Retornar linhas cuja região seja `"Micronesia/Caribbean"` na tabela `country`, dividindo a coluna `Region` em duas colunas distintas (`Region Name 1` e `Region Name 2`).

### 💻 Resolução em SQL:
```sql
SELECT 
    Name, 
    SUBSTRING_INDEX(Region, "/", 1) AS "Region Name 1",
    SUBSTRING_INDEX(Region, "/", -1) AS "Region Name 2" 
FROM world.country 
WHERE Region = "Micronesia/Caribbean";
