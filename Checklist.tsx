import React, { useState } from "react";
import "./checklist.css";

interface Props {
  items: { id: number; label: string; value: string }[];
}

function Checklist(props: Props) {
  const { items } = props;
  const [open, setOpen] = useState(false);
  const [selectedItem, setSelectedItem] = useState<string[]>([]);
  const [search, setSearch] = useState("");

  const handleChange = (item: string) => {
    setSelectedItem((prev) => {
      if (prev.includes(item)) {
        return prev.filter((i) => i !== item);
      } else {
        return [...prev, item];
      }
    });
  };

  const combinedItem = selectedItem.join(", ");
  const filteredItems = items.filter((item) =>
    item.label.toLowerCase().includes(search.toLowerCase())
  );

  const selectAll = () => {
    if (selectedItem.length > 0) {
      setSelectedItem([]);
    } else {
      setSelectedItem(items.map((item) => item.label));
    }
  };

  return (
    <div className="cl--main">
      <h1 className="cl">Checklist</h1>

      <div className="cl-header">
        <input
          className="cl--display"
          type="text"
          value={combinedItem}
          onClick={() => setOpen(!open)}
        />
      </div>

      {open && (
        <div className="cl--items">
          <input
            type="search"
            className="cl--search"
            defaultValue="Search..."
            onChange={(e) => setSearch(e.target.value)}
          />
          <label>
            <input type="checkbox" onChange={selectAll} />
            Select All
          </label>
          <br />
          {filteredItems.map((item) => (
            <>
              <label
                onChange={() => handleChange(item.label)}
                className="cl--item"
              >
                <input
                  className="checkbox"
                  checked={selectedItem.includes(item.label)}
                  type="checkbox"
                />
                {item.label}
              </label>
              <br />
            </>
          ))}
        </div>
      )}
    </div>
  );
}

export default Checklist;
