class AdminTheme
  CURRENT = :classic

  THEMES = {
    ink: {
      layout: {
        body: "bg-white antialiased",
        sidebar: "w-48 bg-stone-50/50 border-r border-stone-100 flex flex-col",
        brand: "font-serif text-[15px] text-stone-700 italic",
        brand_wrapper: "px-5 pt-8 pb-8",
        nav: "flex-1 space-y-5 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-stone-100",
        sidebar_divider: "",
        overlay: "bg-stone-900/15 backdrop-blur-[1px]",
        topbar: "h-14 flex items-center justify-between px-8 lg:px-12",
        topbar_title: "font-serif text-[15px] text-stone-600",
        topbar_date: "hidden sm:block text-[11px] italic text-stone-300",
        content: "flex-1 overflow-y-auto px-8 py-6 lg:px-12 lg:py-8",
        user_wrapper: "px-5 py-5",
        user_email: "text-[11px] text-stone-400 truncate",
        user_avatar: nil,
        menu_icon: "lg:hidden p-1 text-stone-300 hover:text-stone-500",
        signout: "flex items-center gap-1.5 text-[11px] italic text-stone-300 hover:text-stone-500 transition-colors mt-0.5"
      },
      stat: {
        group: "flex gap-16 mb-16",
        wrapper: "",
        label: "text-[11px] italic text-stone-300 mb-1.5",
        value: "text-3xl font-light text-stone-700 tabular-nums",
        divider: "w-full h-px bg-stone-100 mb-14"
      },
      step: {
        group: "space-y-8",
        wrapper: "flex items-baseline gap-5",
        number: "text-[11px] text-stone-200 select-none",
        title: "text-[14px] text-stone-600",
        description: "text-[13px] text-stone-400 mt-1"
      },
      section_label: {
        text: "text-[11px] italic text-stone-300 mb-6"
      },
      page_header: {
        wrapper: "mb-14",
        heading: "font-serif text-2xl text-stone-700",
        subtitle: "mt-2 text-[13px] text-stone-400"
      },
      empty_state: {
        message: "text-[13px] italic text-stone-300 pt-4",
        subtext: "text-[12px] text-stone-300 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-[13px] bg-stone-800 text-white hover:bg-stone-700 transition-colors",
        secondary: "px-4 py-2 text-[13px] border border-stone-200 text-stone-600 hover:bg-stone-50 transition-colors",
        danger: "px-4 py-2 text-[13px] bg-red-800 text-white hover:bg-red-700 transition-colors",
        ghost: "px-4 py-2 text-[13px] text-stone-500 hover:text-stone-700 transition-colors",
        disabled: "px-4 py-2 text-[13px] bg-stone-100 text-stone-300 cursor-not-allowed",
        sm: "px-3 py-1 text-[12px]",
        md: "px-4 py-2 text-[13px]",
        lg: "px-6 py-2.5 text-[14px]"
      },
      flash: {
        notice: "mb-8 text-[13px] italic text-stone-400",
        alert: "mb-8 text-[13px] text-stone-600"
      },
      nav_link: {
        active: "flex items-center gap-2.5 px-5 py-1 text-[13px] transition-colors text-stone-900",
        inactive: "flex items-center gap-2.5 px-5 py-1 text-[13px] transition-colors text-stone-400 hover:text-stone-600",
        coming_soon: "block px-5 py-1 text-[13px] text-stone-300 cursor-default",
        badge: "text-[11px] italic text-stone-300",
        section: "px-5 mb-1 text-[11px] italic text-stone-300"
      },
      separator: {
        horizontal: "w-full border-t border-stone-100",
        vertical: "h-full border-l border-stone-100",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-serif italic",
        default: "bg-stone-50 text-stone-500 border border-stone-100",
        success: "bg-emerald-50 text-emerald-700 border border-emerald-100",
        warning: "bg-amber-50 text-amber-700 border border-amber-100",
        error: "bg-red-50 text-red-700 border border-red-100",
        info: "bg-sky-50 text-sky-700 border border-sky-100",
        outline: "bg-transparent text-stone-400 border border-stone-200",
        sm: "px-2 py-0.5 text-[11px]",
        md: "px-2.5 py-0.5 text-[12px]"
      },
      alert: {
        wrapper: "flex gap-3 py-3",
        info: "border-b border-sky-100 text-sky-800",
        success: "border-b border-emerald-100 text-emerald-800",
        warning: "border-b border-amber-100 text-amber-800",
        error: "border-b border-red-100 text-red-800",
        icon: "flex-shrink-0 mt-0.5",
        title: "font-serif text-[14px] mb-0.5",
        message: "text-[13px] opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "border-b border-stone-100 pb-6 mb-6",
        header: "pb-3",
        title: "font-serif text-[16px] text-stone-700",
        description: "text-[13px] text-stone-400 mt-0.5",
        body: "",
        footer: "pt-3 border-t border-stone-50 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center bg-stone-100 text-stone-500 font-serif italic",
        sm: "w-7 h-7 text-[11px]",
        md: "w-9 h-9 text-[13px]",
        lg: "w-12 h-12 text-[16px]",
        image: "object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left",
        th: "text-[11px] italic text-stone-300 pb-3 font-normal",
        body: "",
        tr: "border-b border-stone-50",
        tr_hover: "hover:bg-stone-50/50 transition-colors",
        tr_striped: "even:bg-stone-50/30",
        td: "py-3 text-[13px] text-stone-600"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-stone-50",
        item_horizontal: "py-3 border-b border-stone-50 flex items-baseline gap-8",
        term: "text-[11px] italic text-stone-300 mb-0.5",
        term_horizontal: "text-[11px] italic text-stone-300 w-32 flex-shrink-0",
        detail: "text-[13px] text-stone-600"
      },
      accordion: {
        wrapper: "",
        item: "border-b border-stone-100",
        trigger: "w-full flex items-center justify-between py-3 text-[14px] text-stone-600 hover:text-stone-800 transition-colors text-left cursor-pointer",
        icon: "text-stone-300 transition-transform duration-200",
        content: "pb-4 text-[13px] text-stone-400"
      },
      modal: {
        overlay: "fixed inset-0 bg-stone-900/15 backdrop-blur-[1px] z-50 flex items-center justify-center",
        wrapper: "bg-white border border-stone-100 shadow-sm mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-stone-50",
        title: "font-serif text-[16px] text-stone-700",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-stone-50 flex items-center justify-end gap-3",
        close: "text-stone-300 hover:text-stone-500 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-stone-100",
        tab: "px-4 py-2 text-[13px] text-stone-400 hover:text-stone-600 transition-colors cursor-pointer border-b border-transparent -mb-px",
        tab_active: "px-4 py-2 text-[13px] text-stone-700 cursor-pointer border-b border-stone-400 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white border border-stone-100 shadow-sm min-w-[180px]",
        item: "block w-full text-left px-4 py-2 text-[13px] text-stone-600 hover:bg-stone-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-[13px] text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-stone-50"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-stone-800 text-[12px] text-stone-200 shadow-sm whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-stone-800 rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-5 w-9 items-center cursor-pointer transition-colors duration-200",
        track_off: "bg-stone-200",
        track_on: "bg-stone-800",
        thumb: "inline-block h-3.5 w-3.5 bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-0.5",
        thumb_on: "translate-x-[18px]",
        label: "text-[13px] text-stone-600",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-2",
        item: "bg-white border border-stone-100 shadow-sm px-5 py-3 min-w-[280px] max-w-sm",
        info: "border-l-2 border-l-sky-400",
        success: "border-l-2 border-l-emerald-400",
        warning: "border-l-2 border-l-amber-400",
        error: "border-l-2 border-l-red-400",
        title: "text-[13px] text-stone-700 font-serif",
        message: "text-[12px] text-stone-400 mt-0.5",
        dismiss: "absolute top-2 right-2 text-stone-300 hover:text-stone-500 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-0.5 bg-stone-300 transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1",
        label: "block text-[11px] italic text-stone-400",
        hint: "text-[11px] text-stone-300 mt-1",
        error: "text-[11px] text-red-600 mt-1",
        required: "text-red-400 ml-0.5"
      },
      input: {
        base: "w-full bg-transparent border-b border-stone-200 px-0 py-2 text-[13px] text-stone-700 placeholder-stone-300 focus:border-stone-500 focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-stone-50"
      },
      textarea: {
        base: "w-full bg-transparent border border-stone-200 px-3 py-2 text-[13px] text-stone-700 placeholder-stone-300 focus:border-stone-500 focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-stone-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-transparent border-b border-stone-200 px-0 py-2 pr-8 text-[13px] text-stone-700 focus:border-stone-500 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-0 top-1/2 -translate-y-1/2 text-stone-300",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2.5",
        input: "mt-0.5 h-4 w-4 border border-stone-300 text-stone-800 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-[13px] text-stone-600",
        hint: "text-[11px] text-stone-300",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-2",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2.5",
        input: "mt-0.5 h-4 w-4 border border-stone-300 text-stone-800 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-[13px] text-stone-600",
        hint: "text-[11px] text-stone-300",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "",
        item: "py-4 border-b border-stone-50",
        item_hover: "hover:bg-stone-50/50 transition-colors",
        label: "text-[11px] italic text-stone-300",
        value: "text-[13px] text-stone-600",
        actions: "pt-2 flex items-center gap-3",
        divider: "w-full h-px bg-stone-100"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-transparent border-b border-stone-200 pl-7 pr-0 py-1.5 text-[13px] text-stone-700 placeholder-stone-300 focus:border-stone-500 focus:outline-none transition-colors",
        search_icon: "absolute left-0 top-1/2 -translate-y-1/2 text-stone-300",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1 text-[13px] text-stone-500 hover:text-stone-700 transition-colors cursor-pointer",
        item_active: "px-3 py-1 text-[13px] text-stone-800 border-b border-stone-400",
        item_disabled: "px-3 py-1 text-[13px] text-stone-200 cursor-not-allowed",
        ellipsis: "px-2 text-[13px] text-stone-300",
        info: "text-[12px] italic text-stone-300"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-1.5 mb-4",
        item: "text-[13px] text-stone-400 hover:text-stone-600 transition-colors",
        item_active: "text-[13px] text-stone-700",
        separator: "text-stone-200 text-[11px]"
      },
      progress: {
        track: "w-full bg-stone-100 overflow-hidden",
        bar: "h-full bg-stone-700 transition-all duration-300",
        bar_success: "h-full bg-emerald-600 transition-all duration-300",
        bar_warning: "h-full bg-amber-500 transition-all duration-300",
        bar_error: "h-full bg-red-600 transition-all duration-300",
        bar_info: "h-full bg-sky-500 transition-all duration-300",
        label: "text-[11px] italic text-stone-400 mt-1",
        sm: "h-1",
        md: "h-2",
        lg: "h-3"
      },
      skeleton: {
        base: "animate-pulse bg-stone-100",
        text: "h-3 rounded-none",
        heading: "h-5 w-48 rounded-none",
        avatar: "w-9 h-9 rounded-none",
        button: "h-8 w-24 rounded-none",
        image: "h-32 w-full rounded-none"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-[11px] italic text-stone-300",
        value: "text-[13px] text-stone-600",
        divider: "w-px h-3 bg-stone-150 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#fafaf9",
        toolbar_border: "#e7e5e4",
        btn_color: "#a8a29e",
        btn_hover_bg: "#f5f5f4",
        btn_active_bg: "#e7e5e4",
        btn_active_color: "#44403c",
        editor_bg: "#ffffff",
        editor_border: "#e7e5e4",
        editor_focus: "#a8a29e",
        editor_text: "#1c1917",
        content_blockquote: "#d6d3d1",
        content_code_bg: "#f5f5f4"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-stone-200 px-6 py-8 cursor-pointer hover:border-stone-300 transition-colors",
        dropzone_active: "border-stone-400 bg-stone-50/50",
        icon: "text-stone-300 mb-3",
        text: "text-[13px] text-stone-500",
        hint: "text-[11px] text-stone-300 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-stone-100 overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 bg-white/90 text-stone-400 hover:text-stone-600 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-sky-50 border-b border-sky-100 text-sky-800",
        warning: "bg-amber-50 border-b border-amber-100 text-amber-800",
        maintenance: "bg-stone-100 border-b border-stone-200 text-stone-700",
        title: "font-serif text-[13px] font-medium",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "text-[11px] italic"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#1c1917",
        sidebar_bg: "#0c0a09",
        sidebar_border: "#292524",
        sidebar_text: "#a8a29e",
        sidebar_text_active: "#fafaf9",
        topbar_bg: "#1c1917",
        topbar_border: "#292524",
        topbar_text: "#fafaf9",
        content_bg: "#1c1917",
        content_text: "#e7e5e4",
        card_bg: "#292524",
        card_border: "#44403c",
        table_border: "#292524",
        table_text: "#a8a29e",
        input_bg: "#292524",
        input_border: "#44403c",
        input_text: "#e7e5e4"
      }
    },

    swiss_mono: {
      layout: {
        body: "bg-zinc-100 antialiased",
        sidebar: "w-56 bg-zinc-950 border-r border-zinc-800 flex flex-col",
        brand: "text-[11px] font-semibold uppercase tracking-[0.2em] text-zinc-500",
        brand_wrapper: "px-5 pt-5 pb-4",
        nav: "flex-1 py-3 space-y-4 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-zinc-800",
        sidebar_divider: "w-full h-px bg-zinc-800",
        overlay: "bg-black/50",
        topbar: "h-12 flex items-center justify-between px-6 bg-zinc-100 border-b border-zinc-200",
        topbar_title: "text-sm font-medium text-zinc-900",
        topbar_date: "hidden sm:block text-[12px] text-zinc-400 tabular-nums",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-3 flex items-center gap-2.5",
        user_email: "flex-1 text-[12px] text-zinc-400 truncate",
        user_avatar: "w-6 h-6 bg-zinc-800 flex items-center justify-center text-[11px] font-medium text-zinc-400",
        menu_icon: "lg:hidden p-1 text-zinc-400 hover:text-zinc-700",
        signout: "flex items-center gap-1.5 text-zinc-600 hover:text-zinc-300 transition-colors"
      },
      stat: {
        group: "grid grid-cols-3 border border-zinc-200 bg-white mb-8",
        wrapper: "px-5 py-4",
        label: "text-[11px] uppercase tracking-wide text-zinc-400 mb-1",
        value: "text-2xl font-semibold text-zinc-900 tabular-nums",
        divider: "w-full h-px bg-zinc-200 mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-baseline gap-4",
        number: "text-[11px] font-mono text-zinc-400 select-none",
        title: "text-[13px] font-medium text-zinc-900",
        description: "text-[13px] text-zinc-500 mt-0.5"
      },
      section_label: {
        text: "text-[11px] uppercase tracking-wide text-zinc-400 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-xl font-semibold text-zinc-900 tracking-tight",
        subtitle: "mt-0.5 text-[13px] text-zinc-500"
      },
      empty_state: {
        message: "text-[13px] text-zinc-400 pt-4",
        subtext: "text-[12px] text-zinc-400 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-[13px] font-medium bg-zinc-900 text-white hover:bg-zinc-800 transition-colors",
        secondary: "px-4 py-2 text-[13px] font-medium border border-zinc-200 text-zinc-700 hover:bg-zinc-50 transition-colors",
        danger: "px-4 py-2 text-[13px] font-medium bg-red-600 text-white hover:bg-red-700 transition-colors",
        ghost: "px-4 py-2 text-[13px] font-medium text-zinc-500 hover:text-zinc-900 hover:bg-zinc-100 transition-colors",
        disabled: "px-4 py-2 text-[13px] bg-zinc-100 text-zinc-400 cursor-not-allowed",
        sm: "px-3 py-1 text-[12px]",
        md: "px-4 py-2 text-[13px]",
        lg: "px-6 py-2.5 text-[14px]"
      },
      flash: {
        notice: "mb-6 px-4 py-3 border-l-2 border-zinc-400 bg-zinc-50 text-[13px] text-zinc-700",
        alert: "mb-6 px-4 py-3 border-l-2 border-zinc-900 bg-zinc-50 text-[13px] text-zinc-900 font-medium"
      },
      nav_link: {
        active: "flex items-center gap-3 px-4 py-1.5 text-[13px] transition-colors border-l-2 border-zinc-300 text-white bg-white/[0.04]",
        inactive: "flex items-center gap-3 px-4 py-1.5 text-[13px] transition-colors border-l-2 border-transparent text-zinc-400 hover:text-zinc-200 hover:border-zinc-600",
        coming_soon: "group flex items-center gap-3 px-4 py-1.5 text-[13px] text-zinc-500 cursor-default",
        badge: "ml-auto text-[10px] uppercase tracking-widest text-zinc-600",
        section: "px-4 mb-1 text-[10px] uppercase tracking-widest text-zinc-600"
      },
      separator: {
        horizontal: "w-full border-t border-zinc-200",
        vertical: "h-full border-l border-zinc-200",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium uppercase tracking-wide",
        default: "bg-zinc-100 text-zinc-600",
        success: "bg-emerald-50 text-emerald-700",
        warning: "bg-amber-50 text-amber-700",
        error: "bg-red-50 text-red-700",
        info: "bg-sky-50 text-sky-700",
        outline: "bg-transparent text-zinc-500 border border-zinc-300",
        sm: "px-1.5 py-0.5 text-[10px]",
        md: "px-2 py-0.5 text-[11px]"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 border-l-2",
        info: "border-l-sky-500 bg-sky-50 text-sky-900",
        success: "border-l-emerald-500 bg-emerald-50 text-emerald-900",
        warning: "border-l-amber-500 bg-amber-50 text-amber-900",
        error: "border-l-red-500 bg-red-50 text-red-900",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-[13px] font-medium mb-0.5",
        message: "text-[13px] opacity-75",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white border border-zinc-200",
        header: "px-5 py-4 border-b border-zinc-100",
        title: "text-[13px] font-medium text-zinc-900",
        description: "text-[13px] text-zinc-500 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-zinc-100 bg-zinc-50 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center bg-zinc-200 text-zinc-600 font-medium uppercase",
        sm: "w-7 h-7 text-[10px]",
        md: "w-9 h-9 text-[12px]",
        lg: "w-12 h-12 text-[14px]",
        image: "object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left border-b border-zinc-200",
        th: "text-[11px] uppercase tracking-wide text-zinc-400 pb-2 font-medium",
        body: "",
        tr: "border-b border-zinc-100",
        tr_hover: "hover:bg-zinc-50 transition-colors",
        tr_striped: "even:bg-zinc-50/50",
        td: "py-3 text-[13px] text-zinc-700"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-zinc-100",
        item_horizontal: "py-3 border-b border-zinc-100 flex items-baseline gap-8",
        term: "text-[11px] uppercase tracking-wide text-zinc-400 mb-0.5",
        term_horizontal: "text-[11px] uppercase tracking-wide text-zinc-400 w-36 flex-shrink-0",
        detail: "text-[13px] text-zinc-700"
      },
      accordion: {
        wrapper: "border border-zinc-200 divide-y divide-zinc-200",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-[13px] font-medium text-zinc-700 hover:bg-zinc-50 transition-colors text-left cursor-pointer",
        icon: "text-zinc-400 transition-transform duration-200",
        content: "px-4 pb-4 text-[13px] text-zinc-500"
      },
      modal: {
        overlay: "fixed inset-0 bg-black/50 z-50 flex items-center justify-center",
        wrapper: "bg-white border border-zinc-200 shadow-lg mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-5 py-4 border-b border-zinc-200",
        title: "text-[14px] font-medium text-zinc-900",
        body: "px-5 py-5",
        footer: "px-5 py-3 border-t border-zinc-100 bg-zinc-50 flex items-center justify-end gap-3",
        close: "text-zinc-400 hover:text-zinc-700 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-zinc-200",
        tab: "px-4 py-2 text-[13px] font-medium text-zinc-400 hover:text-zinc-700 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-[13px] font-medium text-zinc-900 cursor-pointer border-b-2 border-zinc-900 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white border border-zinc-200 shadow-md min-w-[180px]",
        item: "block w-full text-left px-4 py-2 text-[13px] text-zinc-700 hover:bg-zinc-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-[13px] text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-zinc-100"
      },
      tooltip: {
        wrapper: "absolute z-50 px-2.5 py-1 bg-zinc-900 text-[12px] text-zinc-100 shadow-md whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-zinc-900 rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-5 w-9 items-center cursor-pointer transition-colors duration-200",
        track_off: "bg-zinc-200",
        track_on: "bg-zinc-900",
        thumb: "inline-block h-3.5 w-3.5 bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-0.5",
        thumb_on: "translate-x-[18px]",
        label: "text-[13px] font-medium text-zinc-700",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-2",
        item: "bg-white border border-zinc-200 shadow-md px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-2 border-l-sky-500",
        success: "border-l-2 border-l-emerald-500",
        warning: "border-l-2 border-l-amber-500",
        error: "border-l-2 border-l-red-500",
        title: "text-[13px] font-medium text-zinc-900",
        message: "text-[12px] text-zinc-500 mt-0.5",
        dismiss: "absolute top-2 right-2 text-zinc-400 hover:text-zinc-700 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-0.5 bg-zinc-400 transition-all"
      },
      form: {
        group: "space-y-4",
        field: "space-y-1",
        label: "block text-[11px] uppercase tracking-wide text-zinc-400 font-medium",
        hint: "text-[11px] text-zinc-400 mt-1",
        error: "text-[11px] text-red-600 mt-1",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-zinc-200 px-3 py-2 text-[13px] text-zinc-900 placeholder-zinc-400 focus:border-zinc-900 focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-50"
      },
      textarea: {
        base: "w-full bg-white border border-zinc-200 px-3 py-2 text-[13px] text-zinc-900 placeholder-zinc-400 focus:border-zinc-900 focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-zinc-200 px-3 py-2 pr-8 text-[13px] text-zinc-900 focus:border-zinc-900 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-zinc-400",
        error: "border-red-300 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border border-zinc-300 text-zinc-900 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-[13px] text-zinc-700",
        hint: "text-[11px] text-zinc-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-2",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border border-zinc-300 text-zinc-900 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-[13px] text-zinc-700",
        hint: "text-[11px] text-zinc-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "border border-zinc-200 divide-y divide-zinc-200",
        item: "px-4 py-3",
        item_hover: "hover:bg-zinc-50 transition-colors",
        label: "text-[11px] uppercase tracking-wide text-zinc-400 font-medium",
        value: "text-[13px] text-zinc-700",
        actions: "pt-2 flex items-center gap-2",
        divider: "w-full h-px bg-zinc-200"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-zinc-200 pl-8 pr-3 py-2 text-[13px] text-zinc-900 placeholder-zinc-400 focus:border-zinc-900 focus:outline-none transition-colors",
        search_icon: "absolute left-2.5 top-1/2 -translate-y-1/2 text-zinc-400",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1 text-[13px] font-medium text-zinc-500 hover:text-zinc-900 hover:bg-zinc-100 transition-colors cursor-pointer",
        item_active: "px-3 py-1 text-[13px] font-medium text-white bg-zinc-900",
        item_disabled: "px-3 py-1 text-[13px] text-zinc-300 cursor-not-allowed",
        ellipsis: "px-2 text-[13px] text-zinc-400",
        info: "text-[12px] text-zinc-400"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-1.5 mb-4",
        item: "text-[13px] font-medium text-zinc-400 hover:text-zinc-700 transition-colors",
        item_active: "text-[13px] font-medium text-zinc-900",
        separator: "text-zinc-300 text-[11px]"
      },
      progress: {
        track: "w-full bg-zinc-200 overflow-hidden",
        bar: "h-full bg-zinc-900 transition-all duration-300",
        bar_success: "h-full bg-emerald-600 transition-all duration-300",
        bar_warning: "h-full bg-amber-500 transition-all duration-300",
        bar_error: "h-full bg-red-600 transition-all duration-300",
        bar_info: "h-full bg-sky-500 transition-all duration-300",
        label: "text-[11px] text-zinc-400 mt-1",
        sm: "h-1",
        md: "h-2",
        lg: "h-3"
      },
      skeleton: {
        base: "animate-pulse bg-zinc-200",
        text: "h-3",
        heading: "h-5 w-48",
        avatar: "w-9 h-9",
        button: "h-8 w-24",
        image: "h-32 w-full"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-[11px] uppercase tracking-wide text-zinc-400 font-medium",
        value: "text-[13px] text-zinc-700",
        divider: "w-px h-3 bg-zinc-200 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#fafafa",
        toolbar_border: "#e4e4e7",
        btn_color: "#71717a",
        btn_hover_bg: "#f4f4f5",
        btn_active_bg: "#18181b",
        btn_active_color: "#ffffff",
        editor_bg: "#ffffff",
        editor_border: "#e4e4e7",
        editor_focus: "#18181b",
        editor_text: "#09090b",
        content_blockquote: "#d4d4d8",
        content_code_bg: "#f4f4f5"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-zinc-300 rounded-sm px-6 py-8 cursor-pointer hover:border-zinc-400 hover:bg-zinc-50 transition-colors",
        dropzone_active: "border-zinc-500 bg-zinc-50",
        icon: "text-zinc-400 mb-3",
        text: "text-[13px] font-mono text-zinc-600",
        hint: "text-[11px] font-mono text-zinc-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-zinc-200 rounded-sm overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 rounded-sm bg-zinc-900/80 text-white opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-400",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-6 py-2 bg-violet-950/50 border-b border-violet-800",
        text: "font-mono text-[11px] uppercase tracking-wider text-violet-400",
        stop_button: "font-mono text-[11px] uppercase tracking-wider text-violet-500 hover:text-violet-300 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-6 py-2.5",
        info: "bg-sky-950/50 border-b border-sky-800 text-sky-300",
        warning: "bg-amber-950/50 border-b border-amber-800 text-amber-300",
        maintenance: "bg-zinc-800 border-b border-zinc-700 text-zinc-300",
        title: "font-mono text-[12px] font-medium uppercase tracking-wider",
        body: "font-mono text-[11px] opacity-70 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "font-mono text-[11px] uppercase tracking-wider"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#18181b",
        sidebar_bg: "#09090b",
        sidebar_border: "#27272a",
        sidebar_text: "#a1a1aa",
        sidebar_text_active: "#fafafa",
        topbar_bg: "#18181b",
        topbar_border: "#27272a",
        topbar_text: "#fafafa",
        content_bg: "#18181b",
        content_text: "#e4e4e7",
        card_bg: "#27272a",
        card_border: "#3f3f46",
        table_border: "#27272a",
        table_text: "#a1a1aa",
        input_bg: "#27272a",
        input_border: "#3f3f46",
        input_text: "#e4e4e7"
      }
    },

    classic: {
      layout: {
        body: "bg-gray-50 antialiased",
        sidebar: "w-56 bg-white border-r border-gray-200 flex flex-col",
        brand: "text-lg font-bold text-indigo-600",
        brand_wrapper: "px-4 pt-5 pb-4",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-1",
        divider: "w-full h-px bg-gray-200",
        sidebar_divider: "w-full h-px bg-gray-200",
        overlay: "bg-gray-900/50",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-white border-b border-gray-200",
        topbar_title: "text-base font-bold text-gray-900",
        topbar_date: "hidden sm:block text-sm text-gray-500",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-gray-200",
        user_email: "text-sm text-gray-600 truncate",
        user_avatar: "w-8 h-8 rounded-full bg-indigo-100 flex items-center justify-center text-sm font-medium text-indigo-600",
        menu_icon: "lg:hidden p-1.5 text-gray-400 hover:text-gray-600 rounded-md",
        signout: "flex items-center gap-1.5 text-sm text-gray-500 hover:text-gray-700 transition-colors mt-1"
      },
      stat: {
        group: "grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8",
        wrapper: "bg-white rounded-lg shadow-sm border border-gray-200 px-5 py-4",
        label: "text-sm font-medium text-gray-500 mb-1",
        value: "text-2xl font-bold text-gray-900 tabular-nums",
        divider: "w-full h-px bg-gray-200 mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-start gap-4 bg-white rounded-lg border border-gray-200 p-4",
        number: "flex-shrink-0 w-7 h-7 rounded-full bg-indigo-100 text-indigo-600 text-sm font-bold flex items-center justify-center",
        title: "text-sm font-semibold text-gray-900",
        description: "text-sm text-gray-600 mt-0.5"
      },
      section_label: {
        text: "text-xs font-semibold uppercase tracking-wide text-gray-400 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-bold text-gray-900",
        subtitle: "mt-1 text-sm text-gray-500"
      },
      empty_state: {
        message: "text-sm text-gray-400 pt-4",
        subtext: "text-sm text-gray-400 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-sm font-medium bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition-colors",
        secondary: "px-4 py-2 text-sm font-medium border border-gray-300 text-gray-700 rounded-md hover:bg-gray-50 transition-colors",
        danger: "px-4 py-2 text-sm font-medium bg-red-600 text-white rounded-md hover:bg-red-700 transition-colors",
        ghost: "px-4 py-2 text-sm font-medium text-gray-500 hover:text-gray-900 hover:bg-gray-100 rounded-md transition-colors",
        disabled: "px-4 py-2 text-sm font-medium bg-gray-100 text-gray-400 rounded-md cursor-not-allowed",
        sm: "px-3 py-1.5 text-xs rounded",
        md: "px-4 py-2 text-sm rounded-md",
        lg: "px-6 py-2.5 text-base rounded-md"
      },
      flash: {
        notice: "mb-6 px-4 py-3 rounded-md bg-green-50 border border-green-200 text-sm text-green-700",
        alert: "mb-6 px-4 py-3 rounded-md bg-red-50 border border-red-200 text-sm text-red-700"
      },
      nav_link: {
        active: "flex items-center px-3 py-2 text-sm font-medium rounded-md bg-indigo-50 text-indigo-700",
        inactive: "flex items-center px-3 py-2 text-sm font-medium rounded-md text-gray-700 hover:bg-gray-50",
        coming_soon: "flex items-center px-3 py-2 text-sm text-gray-400 cursor-default rounded-md",
        badge: "ml-auto text-xs font-medium text-gray-400",
        section: "px-3 mb-1 text-xs font-semibold uppercase tracking-wide text-gray-400"
      },
      separator: {
        horizontal: "w-full border-t border-gray-200",
        vertical: "h-full border-l border-gray-200",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium rounded-full",
        default: "bg-gray-100 text-gray-700",
        success: "bg-green-100 text-green-700",
        warning: "bg-yellow-100 text-yellow-800",
        error: "bg-red-100 text-red-700",
        info: "bg-blue-100 text-blue-700",
        outline: "bg-transparent text-gray-500 border border-gray-300 rounded-full",
        sm: "px-2 py-0.5 text-xs",
        md: "px-2.5 py-0.5 text-xs"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 rounded-md border",
        info: "border-blue-200 bg-blue-50 text-blue-800",
        success: "border-green-200 bg-green-50 text-green-800",
        warning: "border-yellow-200 bg-yellow-50 text-yellow-800",
        error: "border-red-200 bg-red-50 text-red-800",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-semibold mb-0.5",
        message: "text-sm opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white rounded-lg border border-gray-200 shadow-sm",
        header: "px-5 py-4 border-b border-gray-100",
        title: "text-base font-semibold text-gray-900",
        description: "text-sm text-gray-500 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-gray-100 bg-gray-50 rounded-b-lg flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-600 font-semibold",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-lg",
        image: "rounded-full object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left bg-gray-50 border-b border-gray-200",
        th: "text-xs font-semibold uppercase tracking-wide text-gray-500 px-4 py-3",
        body: "",
        tr: "border-b border-gray-100",
        tr_hover: "hover:bg-gray-50 transition-colors",
        tr_striped: "even:bg-gray-50/50",
        td: "px-4 py-3 text-sm text-gray-700"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-gray-100",
        item_horizontal: "py-3 border-b border-gray-100 sm:flex sm:items-baseline sm:gap-8",
        term: "text-sm font-medium text-gray-500 mb-0.5",
        term_horizontal: "text-sm font-medium text-gray-500 sm:w-40 flex-shrink-0",
        detail: "text-sm text-gray-900"
      },
      accordion: {
        wrapper: "rounded-lg border border-gray-200 divide-y divide-gray-200",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-gray-700 hover:bg-gray-50 transition-colors text-left cursor-pointer",
        icon: "text-gray-400 transition-transform duration-200",
        content: "px-4 pb-4 text-sm text-gray-600"
      },
      modal: {
        overlay: "fixed inset-0 bg-gray-900/50 z-50 flex items-center justify-center",
        wrapper: "bg-white rounded-lg border border-gray-200 shadow-xl mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-gray-200",
        title: "text-lg font-semibold text-gray-900",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-gray-100 bg-gray-50 rounded-b-lg flex items-center justify-end gap-3",
        close: "text-gray-400 hover:text-gray-600 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-gray-200",
        tab: "px-4 py-2 text-sm font-medium text-gray-500 hover:text-gray-700 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-medium text-indigo-600 cursor-pointer border-b-2 border-indigo-600 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white rounded-md border border-gray-200 shadow-lg min-w-[180px] py-1",
        item: "block w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-gray-100"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-gray-900 text-xs text-white rounded-md shadow-lg whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-gray-900 rotate-45 rounded-sm"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-gray-200",
        track_on: "bg-indigo-600",
        thumb: "inline-block h-4 w-4 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-1",
        thumb_on: "translate-x-6",
        label: "text-sm font-medium text-gray-700",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-3",
        item: "bg-white rounded-lg border border-gray-200 shadow-lg px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-4 border-l-blue-500",
        success: "border-l-4 border-l-green-500",
        warning: "border-l-4 border-l-yellow-500",
        error: "border-l-4 border-l-red-500",
        title: "text-sm font-semibold text-gray-900",
        message: "text-sm text-gray-500 mt-0.5",
        dismiss: "absolute top-2 right-2 text-gray-400 hover:text-gray-600 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-indigo-500 rounded-bl-lg transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1.5",
        label: "block text-sm font-medium text-gray-700",
        hint: "text-xs text-gray-400 mt-1",
        error: "text-xs text-red-600 mt-1",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-gray-300 rounded-md px-3 py-2 text-sm text-gray-900 placeholder-gray-400 focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-gray-50"
      },
      textarea: {
        base: "w-full bg-white border border-gray-300 rounded-md px-3 py-2 text-sm text-gray-900 placeholder-gray-400 focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-gray-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-gray-300 rounded-md px-3 py-2 pr-8 text-sm text-gray-900 focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-gray-400",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500 cursor-pointer",
        label: "text-sm text-gray-700",
        hint: "text-xs text-gray-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-3",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-gray-300 text-indigo-600 focus:ring-indigo-500 cursor-pointer",
        label: "text-sm text-gray-700",
        hint: "text-xs text-gray-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "bg-white rounded-lg border border-gray-200 shadow-sm divide-y divide-gray-100",
        item: "px-5 py-4",
        item_hover: "hover:bg-gray-50 transition-colors",
        label: "text-xs font-medium text-gray-500",
        value: "text-sm text-gray-900",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-px bg-gray-200"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-gray-300 rounded-md pl-9 pr-3 py-2 text-sm text-gray-900 placeholder-gray-400 focus:border-indigo-500 focus:ring-1 focus:ring-indigo-500 focus:outline-none transition-colors",
        search_icon: "absolute left-3 top-1/2 -translate-y-1/2 text-gray-400",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1.5 text-sm font-medium text-gray-500 hover:text-gray-900 hover:bg-gray-100 rounded-md transition-colors cursor-pointer",
        item_active: "px-3 py-1.5 text-sm font-medium text-white bg-indigo-600 rounded-md",
        item_disabled: "px-3 py-1.5 text-sm text-gray-300 cursor-not-allowed",
        ellipsis: "px-2 text-sm text-gray-400",
        info: "text-sm text-gray-500"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-sm font-medium text-gray-500 hover:text-indigo-600 transition-colors",
        item_active: "text-sm font-semibold text-gray-900",
        separator: "text-gray-300 text-xs"
      },
      progress: {
        track: "w-full bg-gray-200 rounded-full overflow-hidden",
        bar: "h-full bg-indigo-600 rounded-full transition-all duration-300",
        bar_success: "h-full bg-green-500 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-yellow-500 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-500 rounded-full transition-all duration-300",
        bar_info: "h-full bg-blue-500 rounded-full transition-all duration-300",
        label: "text-xs text-gray-500 mt-1",
        sm: "h-1.5",
        md: "h-2.5",
        lg: "h-4"
      },
      skeleton: {
        base: "animate-pulse bg-gray-200 rounded-md",
        text: "h-3 rounded",
        heading: "h-5 w-48 rounded",
        avatar: "w-9 h-9 rounded-full",
        button: "h-9 w-24 rounded-md",
        image: "h-32 w-full rounded-lg"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-xs font-medium text-gray-500",
        value: "text-sm text-gray-900",
        divider: "w-px h-3 bg-gray-200 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#f9fafb",
        toolbar_border: "#e5e7eb",
        btn_color: "#6b7280",
        btn_hover_bg: "#f3f4f6",
        btn_active_bg: "#e5e7eb",
        btn_active_color: "#111827",
        editor_bg: "#ffffff",
        editor_border: "#d1d5db",
        editor_focus: "#6366f1",
        editor_text: "#111827",
        content_blockquote: "#d1d5db",
        content_code_bg: "#f3f4f6"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border-2 border-dashed border-slate-200 rounded-xl px-6 py-8 cursor-pointer hover:border-indigo-300 hover:bg-indigo-50/30 transition-colors",
        dropzone_active: "border-indigo-400 bg-indigo-50/50",
        icon: "text-indigo-300 mb-3",
        text: "text-[13px] text-slate-600",
        hint: "text-[11px] text-slate-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-slate-200 rounded-lg overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-1 rounded-full bg-white shadow-sm text-slate-400 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12 rounded-lg mx-4 mt-3",
        info: "bg-indigo-50 border border-indigo-100 text-indigo-800",
        warning: "bg-amber-50 border border-amber-100 text-amber-800",
        maintenance: "bg-slate-100 border border-slate-200 text-slate-700",
        title: "text-[13px] font-semibold",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "text-[11px] font-medium"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#0f172a",
        sidebar_bg: "#020617",
        sidebar_border: "#1e293b",
        sidebar_text: "#94a3b8",
        sidebar_text_active: "#f8fafc",
        topbar_bg: "#0f172a",
        topbar_border: "#1e293b",
        topbar_text: "#f8fafc",
        content_bg: "#0f172a",
        content_text: "#e2e8f0",
        card_bg: "#1e293b",
        card_border: "#334155",
        table_border: "#1e293b",
        table_text: "#94a3b8",
        input_bg: "#1e293b",
        input_border: "#334155",
        input_text: "#e2e8f0"
      }
    },

    # ─── BRUTAL ───────────────────────────────────────────────
    # Raw, loud, anti-design. Thick black borders, offset shadows,
    # uppercase everything, monospace type, electric yellow accent.
    brutal: {
      layout: {
        body: "bg-white antialiased font-mono",
        sidebar: "w-56 bg-black border-r-4 border-black flex flex-col",
        brand: "text-sm font-black uppercase tracking-[0.3em] text-yellow-400",
        brand_wrapper: "px-4 pt-5 pb-4",
        nav: "flex-1 px-2 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-1 bg-black",
        sidebar_divider: "w-full h-px bg-zinc-800",
        overlay: "bg-black/70",
        topbar: "h-14 flex items-center justify-between px-6 bg-yellow-400 border-b-4 border-black",
        topbar_title: "text-sm font-black uppercase tracking-wide text-black",
        topbar_date: "hidden sm:block text-xs font-mono text-black/60",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t-2 border-zinc-800",
        user_email: "text-xs text-zinc-500 truncate font-mono",
        user_avatar: "w-7 h-7 bg-yellow-400 flex items-center justify-center text-xs font-black text-black",
        menu_icon: "lg:hidden p-1 text-yellow-400 hover:text-white",
        signout: "flex items-center gap-1.5 text-xs text-zinc-500 hover:text-yellow-400 transition-colors uppercase tracking-wide"
      },
      stat: {
        group: "grid grid-cols-3 gap-0 border-4 border-black mb-8",
        wrapper: "px-5 py-4 border-r-4 border-black last:border-r-0",
        label: "text-[10px] uppercase tracking-[0.2em] text-zinc-400 mb-1",
        value: "text-3xl font-black text-black tabular-nums",
        divider: "w-full h-1 bg-black mb-8"
      },
      step: {
        group: "space-y-3",
        wrapper: "flex items-baseline gap-4 border-4 border-black p-4 shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]",
        number: "text-sm font-black text-yellow-500 select-none",
        title: "text-sm font-black uppercase text-black",
        description: "text-xs text-zinc-500 mt-0.5 font-mono"
      },
      section_label: {
        text: "text-[10px] font-black uppercase tracking-[0.3em] text-zinc-400 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-black uppercase tracking-tight text-black",
        subtitle: "mt-1 text-xs text-zinc-500 font-mono"
      },
      empty_state: {
        message: "text-xs text-zinc-400 pt-4 uppercase tracking-wide",
        subtext: "text-xs text-zinc-400 mt-1 font-mono"
      },
      button: {
        primary: "px-5 py-2 text-xs font-black uppercase tracking-wide bg-black text-yellow-400 border-2 border-black hover:bg-yellow-400 hover:text-black transition-colors",
        secondary: "px-5 py-2 text-xs font-black uppercase tracking-wide border-4 border-black text-black hover:bg-black hover:text-white transition-colors",
        danger: "px-5 py-2 text-xs font-black uppercase tracking-wide bg-red-600 text-white border-2 border-black hover:bg-red-700 transition-colors",
        ghost: "px-5 py-2 text-xs font-black uppercase tracking-wide text-zinc-500 hover:text-black transition-colors",
        disabled: "px-5 py-2 text-xs font-black uppercase tracking-wide bg-zinc-100 text-zinc-300 border-2 border-zinc-200 cursor-not-allowed",
        sm: "px-3 py-1 text-[10px]",
        md: "px-5 py-2 text-xs",
        lg: "px-7 py-3 text-sm"
      },
      flash: {
        notice: "mb-6 px-4 py-3 border-4 border-black bg-yellow-400 text-xs font-bold text-black uppercase",
        alert: "mb-6 px-4 py-3 border-4 border-black bg-red-500 text-xs font-bold text-white uppercase"
      },
      nav_link: {
        active: "flex items-center gap-2.5 px-3 py-1.5 text-xs font-bold uppercase tracking-wide text-black bg-yellow-400",
        inactive: "flex items-center gap-2.5 px-3 py-1.5 text-xs font-bold uppercase tracking-wide text-zinc-500 hover:text-yellow-400 transition-colors",
        coming_soon: "block px-3 py-1.5 text-xs uppercase tracking-wide text-zinc-700 cursor-default",
        badge: "ml-auto text-[9px] uppercase tracking-widest text-zinc-600",
        section: "px-3 mb-1 text-[9px] uppercase tracking-[0.3em] text-zinc-600"
      },
      separator: {
        horizontal: "w-full border-t-4 border-black",
        vertical: "h-full border-l-4 border-black",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-black uppercase tracking-wide border-2 border-black",
        default: "bg-zinc-100 text-black",
        success: "bg-emerald-400 text-black",
        warning: "bg-yellow-400 text-black",
        error: "bg-red-500 text-white",
        info: "bg-sky-400 text-black",
        outline: "bg-transparent text-black",
        sm: "px-1.5 py-0.5 text-[9px]",
        md: "px-2 py-0.5 text-[10px]"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 border-4 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)]",
        info: "bg-sky-100 text-black",
        success: "bg-emerald-100 text-black",
        warning: "bg-yellow-100 text-black",
        error: "bg-red-100 text-black",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-xs font-black uppercase mb-0.5",
        message: "text-xs font-mono",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-100 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white border-4 border-black shadow-[6px_6px_0px_0px_rgba(0,0,0,1)]",
        header: "px-5 py-4 border-b-4 border-black",
        title: "text-sm font-black uppercase text-black",
        description: "text-xs text-zinc-500 mt-0.5 font-mono",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t-4 border-black bg-zinc-50 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center bg-yellow-400 text-black font-black uppercase border-2 border-black",
        sm: "w-7 h-7 text-[10px]",
        md: "w-9 h-9 text-xs",
        lg: "w-12 h-12 text-sm",
        image: "object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left border-b-4 border-black",
        th: "text-[10px] font-black uppercase tracking-[0.2em] text-black pb-2",
        body: "",
        tr: "border-b-2 border-black",
        tr_hover: "hover:bg-yellow-50 transition-colors",
        tr_striped: "even:bg-zinc-50",
        td: "py-3 text-xs text-zinc-700 font-mono"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b-2 border-black",
        item_horizontal: "py-3 border-b-2 border-black flex items-baseline gap-8",
        term: "text-[10px] font-black uppercase tracking-[0.2em] text-zinc-400 mb-0.5",
        term_horizontal: "text-[10px] font-black uppercase tracking-[0.2em] text-zinc-400 w-36 flex-shrink-0",
        detail: "text-xs text-zinc-700 font-mono"
      },
      accordion: {
        wrapper: "border-4 border-black divide-y-4 divide-black",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-xs font-black uppercase text-black hover:bg-yellow-50 transition-colors text-left cursor-pointer",
        icon: "text-black transition-transform duration-200",
        content: "px-4 pb-4 text-xs text-zinc-600 font-mono"
      },
      modal: {
        overlay: "fixed inset-0 bg-black/70 z-50 flex items-center justify-center",
        wrapper: "bg-white border-4 border-black shadow-[8px_8px_0px_0px_rgba(0,0,0,1)] mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-5 py-4 border-b-4 border-black bg-yellow-400",
        title: "text-sm font-black uppercase text-black",
        body: "px-5 py-5",
        footer: "px-5 py-3 border-t-4 border-black flex items-center justify-end gap-3",
        close: "text-black hover:text-zinc-500 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b-4 border-black",
        tab: "px-4 py-2 text-xs font-black uppercase text-zinc-400 hover:text-black transition-colors cursor-pointer border-b-4 border-transparent -mb-[4px]",
        tab_active: "px-4 py-2 text-xs font-black uppercase text-black cursor-pointer border-b-4 border-yellow-400 -mb-[4px]",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white border-4 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] min-w-[180px]",
        item: "block w-full text-left px-4 py-2 text-xs font-bold uppercase text-black hover:bg-yellow-400 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-xs font-bold uppercase text-red-600 hover:bg-red-100 transition-colors cursor-pointer",
        divider: "my-0 border-t-2 border-black"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-black text-[10px] font-bold uppercase text-yellow-400 whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-black rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center cursor-pointer transition-colors duration-200 border-2 border-black",
        track_off: "bg-zinc-200",
        track_on: "bg-yellow-400",
        thumb: "inline-block h-4 w-4 bg-black transition-transform duration-200",
        thumb_off: "translate-x-0.5",
        thumb_on: "translate-x-[20px]",
        label: "text-xs font-bold uppercase text-black",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-2",
        item: "bg-white border-4 border-black shadow-[4px_4px_0px_0px_rgba(0,0,0,1)] px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-8 border-l-sky-400",
        success: "border-l-8 border-l-emerald-400",
        warning: "border-l-8 border-l-yellow-400",
        error: "border-l-8 border-l-red-500",
        title: "text-xs font-black uppercase text-black",
        message: "text-[11px] text-zinc-500 mt-0.5 font-mono",
        dismiss: "absolute top-2 right-2 text-zinc-400 hover:text-black transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-black transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1",
        label: "block text-[10px] font-black uppercase tracking-[0.2em] text-zinc-500",
        hint: "text-[10px] text-zinc-400 mt-1 font-mono",
        error: "text-[10px] text-red-600 mt-1 font-mono",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border-2 border-black px-3 py-2 text-xs font-mono text-black placeholder-zinc-300 focus:border-yellow-400 focus:outline-none transition-colors",
        error: "border-red-500 focus:border-red-600",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-50"
      },
      textarea: {
        base: "w-full bg-white border-2 border-black px-3 py-2 text-xs font-mono text-black placeholder-zinc-300 focus:border-yellow-400 focus:outline-none transition-colors resize-y",
        error: "border-red-500 focus:border-red-600",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border-2 border-black px-3 py-2 pr-8 text-xs font-mono text-black focus:border-yellow-400 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-black",
        error: "border-red-500 focus:border-red-600",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-2 border-black text-yellow-400 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-xs font-bold text-black",
        hint: "text-[10px] text-zinc-400 font-mono",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-2",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-2 border-black text-yellow-400 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-xs font-bold text-black",
        hint: "text-[10px] text-zinc-400 font-mono",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "border-4 border-black divide-y-4 divide-black",
        item: "px-5 py-4",
        item_hover: "hover:bg-yellow-50 transition-colors",
        label: "text-[10px] font-black uppercase tracking-[0.2em] text-zinc-400",
        value: "text-xs text-black font-mono",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-1 bg-black"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border-2 border-black pl-8 pr-3 py-2 text-xs font-mono text-black placeholder-zinc-300 focus:border-yellow-400 focus:outline-none transition-colors",
        search_icon: "absolute left-2.5 top-1/2 -translate-y-1/2 text-black",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1 text-xs font-bold uppercase text-zinc-500 hover:text-black hover:bg-yellow-400 transition-colors cursor-pointer border-2 border-transparent",
        item_active: "px-3 py-1 text-xs font-bold uppercase text-yellow-400 bg-black border-2 border-black",
        item_disabled: "px-3 py-1 text-xs uppercase text-zinc-200 cursor-not-allowed",
        ellipsis: "px-2 text-xs text-zinc-400",
        info: "text-[10px] uppercase tracking-wide text-zinc-400 font-mono"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-xs font-bold uppercase text-zinc-400 hover:text-yellow-500 transition-colors",
        item_active: "text-xs font-black uppercase text-black",
        separator: "text-black text-sm font-black"
      },
      progress: {
        track: "w-full bg-zinc-200 border-2 border-black overflow-hidden",
        bar: "h-full bg-black transition-all duration-300",
        bar_success: "h-full bg-emerald-500 transition-all duration-300",
        bar_warning: "h-full bg-yellow-400 transition-all duration-300",
        bar_error: "h-full bg-red-500 transition-all duration-300",
        bar_info: "h-full bg-sky-400 transition-all duration-300",
        label: "text-[10px] font-bold uppercase text-zinc-400 mt-1",
        sm: "h-2",
        md: "h-3",
        lg: "h-5"
      },
      skeleton: {
        base: "animate-pulse bg-zinc-200 border-2 border-zinc-300",
        text: "h-3",
        heading: "h-6 w-48",
        avatar: "w-9 h-9",
        button: "h-9 w-24",
        image: "h-32 w-full"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-[10px] font-black uppercase tracking-[0.2em] text-zinc-400",
        value: "text-xs text-black font-mono",
        divider: "w-0.5 h-4 bg-black hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#ffffff",
        toolbar_border: "#000000",
        btn_color: "#000000",
        btn_hover_bg: "#f4f4f5",
        btn_active_bg: "#000000",
        btn_active_color: "#ffffff",
        editor_bg: "#ffffff",
        editor_border: "#000000",
        editor_focus: "#000000",
        editor_text: "#000000",
        content_blockquote: "#000000",
        content_code_bg: "#f4f4f5"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border-2 border-dashed border-stone-900 px-6 py-8 cursor-pointer hover:bg-lime-100 transition-colors",
        dropzone_active: "border-stone-900 bg-lime-200",
        icon: "text-stone-900 mb-3",
        text: "text-[13px] font-bold uppercase text-stone-900",
        hint: "text-[11px] uppercase text-stone-500 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border-2 border-stone-900 overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 bg-red-500 text-white border border-stone-900 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-500",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-6 py-2 bg-violet-200 border-b-2 border-stone-900",
        text: "text-[12px] font-bold uppercase text-violet-900",
        stop_button: "text-[12px] font-bold uppercase text-violet-700 hover:text-red-600 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-6 py-3 border-b-2 border-stone-900",
        info: "bg-sky-200 text-stone-900",
        warning: "bg-amber-300 text-stone-900",
        maintenance: "bg-stone-200 text-stone-900",
        title: "text-[13px] font-black uppercase",
        body: "text-[12px] font-bold mt-0.5",
        dismiss: "ml-auto flex-shrink-0 hover:text-red-600 transition-colors cursor-pointer",
        table_kind: "text-[11px] font-black uppercase"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#0a0a0a",
        sidebar_bg: "#000000",
        sidebar_border: "#262626",
        sidebar_text: "#a3a3a3",
        sidebar_text_active: "#ffffff",
        topbar_bg: "#0a0a0a",
        topbar_border: "#262626",
        topbar_text: "#ffffff",
        content_bg: "#0a0a0a",
        content_text: "#e5e5e5",
        card_bg: "#171717",
        card_border: "#262626",
        table_border: "#262626",
        table_text: "#a3a3a3",
        input_bg: "#171717",
        input_border: "#262626",
        input_text: "#e5e5e5"
      }
    },

    # ─── TERMINAL ─────────────────────────────────────────────
    # Hacker aesthetic. Phosphor green on dark. Monospace everything.
    # CRT-style glow, scanline hints, command-line feel.
    terminal: {
      layout: {
        body: "bg-[#0a0a0a] antialiased font-mono",
        sidebar: "w-56 bg-[#0d0d0d] border-r border-green-900/30 flex flex-col",
        brand: "text-xs font-bold text-green-400 tracking-[0.15em]",
        brand_wrapper: "px-4 pt-5 pb-4",
        nav: "flex-1 px-2 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-green-900/20",
        sidebar_divider: "w-full h-px bg-green-900/20",
        overlay: "bg-black/80",
        topbar: "h-12 flex items-center justify-between px-6 bg-[#0d0d0d] border-b border-green-900/30",
        topbar_title: "text-xs font-bold text-green-400",
        topbar_date: "hidden sm:block text-[11px] text-green-700 tabular-nums",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-green-900/20",
        user_email: "text-[11px] text-green-700 truncate",
        user_avatar: "w-7 h-7 bg-green-900/30 flex items-center justify-center text-[11px] font-bold text-green-400",
        menu_icon: "lg:hidden p-1 text-green-700 hover:text-green-400",
        signout: "flex items-center gap-1.5 text-[11px] text-green-800 hover:text-green-400 transition-colors"
      },
      stat: {
        group: "grid grid-cols-3 gap-4 mb-8",
        wrapper: "bg-[#0d0d0d] border border-green-900/30 px-5 py-4",
        label: "text-[10px] uppercase tracking-wide text-green-800 mb-1",
        value: "text-2xl font-bold text-green-400 tabular-nums",
        divider: "w-full h-px bg-green-900/20 mb-8"
      },
      step: {
        group: "space-y-3",
        wrapper: "flex items-baseline gap-4",
        number: "text-xs text-green-700 select-none",
        title: "text-xs font-bold text-green-400",
        description: "text-xs text-green-800 mt-0.5"
      },
      section_label: {
        text: "text-[10px] uppercase tracking-[0.2em] text-green-800 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-xl font-bold text-green-400 tracking-tight",
        subtitle: "mt-0.5 text-xs text-green-800"
      },
      empty_state: {
        message: "text-xs text-green-800 pt-4",
        subtext: "text-[11px] text-green-900 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-xs font-bold bg-green-500 text-black hover:bg-green-400 transition-colors",
        secondary: "px-4 py-2 text-xs font-bold border border-green-700 text-green-400 hover:bg-green-900/30 transition-colors",
        danger: "px-4 py-2 text-xs font-bold bg-red-600 text-white hover:bg-red-500 transition-colors",
        ghost: "px-4 py-2 text-xs font-bold text-green-700 hover:text-green-400 transition-colors",
        disabled: "px-4 py-2 text-xs font-bold bg-zinc-900 text-zinc-700 cursor-not-allowed",
        sm: "px-3 py-1 text-[11px]",
        md: "px-4 py-2 text-xs",
        lg: "px-6 py-2.5 text-sm"
      },
      flash: {
        notice: "mb-6 px-4 py-3 border border-green-700 bg-green-900/20 text-xs text-green-400",
        alert: "mb-6 px-4 py-3 border border-red-800 bg-red-900/20 text-xs text-red-400"
      },
      nav_link: {
        active: "flex items-center gap-3 px-3 py-1.5 text-xs font-bold text-green-400 bg-green-900/20 border-l-2 border-green-400",
        inactive: "flex items-center gap-3 px-3 py-1.5 text-xs text-green-800 hover:text-green-400 hover:bg-green-900/10 transition-colors border-l-2 border-transparent",
        coming_soon: "flex items-center gap-3 px-3 py-1.5 text-xs text-zinc-700 cursor-default",
        badge: "ml-auto text-[9px] uppercase tracking-widest text-green-800",
        section: "px-3 mb-1 text-[9px] uppercase tracking-[0.2em] text-green-900"
      },
      separator: {
        horizontal: "w-full border-t border-green-900/30",
        vertical: "h-full border-l border-green-900/30",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-bold",
        default: "bg-green-900/20 text-green-500 border border-green-800",
        success: "bg-emerald-900/30 text-emerald-400 border border-emerald-800",
        warning: "bg-amber-900/30 text-amber-400 border border-amber-800",
        error: "bg-red-900/30 text-red-400 border border-red-800",
        info: "bg-sky-900/30 text-sky-400 border border-sky-800",
        outline: "bg-transparent text-green-600 border border-green-800",
        sm: "px-1.5 py-0.5 text-[10px]",
        md: "px-2 py-0.5 text-[11px]"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 border",
        info: "border-sky-800 bg-sky-900/20 text-sky-300",
        success: "border-emerald-800 bg-emerald-900/20 text-emerald-300",
        warning: "border-amber-800 bg-amber-900/20 text-amber-300",
        error: "border-red-800 bg-red-900/20 text-red-300",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-xs font-bold mb-0.5",
        message: "text-xs opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-[#0d0d0d] border border-green-900/30",
        header: "px-5 py-4 border-b border-green-900/20",
        title: "text-sm font-bold text-green-400",
        description: "text-xs text-green-800 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-green-900/20 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center bg-green-900/30 text-green-400 font-bold",
        sm: "w-7 h-7 text-[10px]",
        md: "w-9 h-9 text-xs",
        lg: "w-12 h-12 text-sm",
        image: "object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left border-b border-green-900/30",
        th: "text-[10px] uppercase tracking-wide text-green-800 pb-2 font-bold",
        body: "",
        tr: "border-b border-green-900/20",
        tr_hover: "hover:bg-green-900/10 transition-colors",
        tr_striped: "even:bg-green-900/5",
        td: "py-3 text-xs text-green-600"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-green-900/20",
        item_horizontal: "py-3 border-b border-green-900/20 flex items-baseline gap-8",
        term: "text-[10px] uppercase tracking-wide text-green-800 mb-0.5",
        term_horizontal: "text-[10px] uppercase tracking-wide text-green-800 w-36 flex-shrink-0",
        detail: "text-xs text-green-500"
      },
      accordion: {
        wrapper: "border border-green-900/30 divide-y divide-green-900/20",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-xs font-bold text-green-500 hover:text-green-400 hover:bg-green-900/10 transition-colors text-left cursor-pointer",
        icon: "text-green-700 transition-transform duration-200",
        content: "px-4 pb-4 text-xs text-green-700"
      },
      modal: {
        overlay: "fixed inset-0 bg-black/80 z-50 flex items-center justify-center",
        wrapper: "bg-[#0d0d0d] border border-green-900/30 mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-5 py-4 border-b border-green-900/30",
        title: "text-sm font-bold text-green-400",
        body: "px-5 py-5",
        footer: "px-5 py-3 border-t border-green-900/20 flex items-center justify-end gap-3",
        close: "text-green-700 hover:text-green-400 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-green-900/30",
        tab: "px-4 py-2 text-xs font-bold text-green-800 hover:text-green-400 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-xs font-bold text-green-400 cursor-pointer border-b-2 border-green-400 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-[#0d0d0d] border border-green-900/30 min-w-[180px]",
        item: "block w-full text-left px-4 py-2 text-xs text-green-500 hover:bg-green-900/20 hover:text-green-400 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-xs text-red-400 hover:bg-red-900/20 transition-colors cursor-pointer",
        divider: "my-1 border-t border-green-900/20"
      },
      tooltip: {
        wrapper: "absolute z-50 px-2.5 py-1 bg-green-400 text-[11px] font-bold text-black whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-green-400 rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-5 w-9 items-center cursor-pointer transition-colors duration-200 border border-green-900/30",
        track_off: "bg-zinc-900",
        track_on: "bg-green-900/50",
        thumb: "inline-block h-3.5 w-3.5 bg-green-400 transition-transform duration-200 shadow-[0_0_6px_rgba(74,222,128,0.5)]",
        thumb_off: "translate-x-0.5",
        thumb_on: "translate-x-[18px]",
        label: "text-xs text-green-600",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-2",
        item: "bg-[#0d0d0d] border border-green-900/30 px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-2 border-l-sky-400",
        success: "border-l-2 border-l-green-400",
        warning: "border-l-2 border-l-amber-400",
        error: "border-l-2 border-l-red-400",
        title: "text-xs font-bold text-green-400",
        message: "text-[11px] text-green-800 mt-0.5",
        dismiss: "absolute top-2 right-2 text-green-800 hover:text-green-400 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-0.5 bg-green-400 transition-all"
      },
      form: {
        group: "space-y-4",
        field: "space-y-1",
        label: "block text-[10px] uppercase tracking-wide text-green-800 font-bold",
        hint: "text-[10px] text-green-900 mt-1",
        error: "text-[10px] text-red-400 mt-1",
        required: "text-red-400 ml-0.5"
      },
      input: {
        base: "w-full bg-black border border-green-900/30 px-3 py-2 text-xs text-green-400 placeholder-green-900 focus:border-green-500 focus:outline-none transition-colors caret-green-400",
        error: "border-red-700 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-900"
      },
      textarea: {
        base: "w-full bg-black border border-green-900/30 px-3 py-2 text-xs text-green-400 placeholder-green-900 focus:border-green-500 focus:outline-none transition-colors resize-y caret-green-400",
        error: "border-red-700 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-zinc-900"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-black border border-green-900/30 px-3 py-2 pr-8 text-xs text-green-400 focus:border-green-500 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-green-800",
        error: "border-red-700 focus:border-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border border-green-800 bg-black text-green-500 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-xs text-green-600",
        hint: "text-[10px] text-green-900",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-2",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border border-green-800 bg-black text-green-500 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-xs text-green-600",
        hint: "text-[10px] text-green-900",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "border border-green-900/30 divide-y divide-green-900/20",
        item: "px-5 py-4",
        item_hover: "hover:bg-green-900/10 transition-colors",
        label: "text-[10px] uppercase tracking-wide text-green-800",
        value: "text-xs text-green-500",
        actions: "pt-2 flex items-center gap-2",
        divider: "w-full h-px bg-green-900/20"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-black border border-green-900/30 pl-8 pr-3 py-2 text-xs text-green-400 placeholder-green-900 focus:border-green-500 focus:outline-none transition-colors",
        search_icon: "absolute left-2.5 top-1/2 -translate-y-1/2 text-green-800",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1 text-xs text-green-700 hover:text-green-400 hover:bg-green-900/20 transition-colors cursor-pointer",
        item_active: "px-3 py-1 text-xs text-black bg-green-400 font-bold",
        item_disabled: "px-3 py-1 text-xs text-zinc-700 cursor-not-allowed",
        ellipsis: "px-2 text-xs text-green-900",
        info: "text-[11px] text-green-800"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-1.5 mb-4",
        item: "text-xs text-green-700 hover:text-green-400 transition-colors",
        item_active: "text-xs font-bold text-green-400",
        separator: "text-green-900 text-[11px]"
      },
      progress: {
        track: "w-full bg-zinc-900 border border-green-900/20 overflow-hidden",
        bar: "h-full bg-green-500 transition-all duration-300 shadow-[0_0_8px_rgba(74,222,128,0.3)]",
        bar_success: "h-full bg-emerald-400 transition-all duration-300",
        bar_warning: "h-full bg-amber-400 transition-all duration-300",
        bar_error: "h-full bg-red-500 transition-all duration-300",
        bar_info: "h-full bg-sky-400 transition-all duration-300",
        label: "text-[10px] text-green-800 mt-1",
        sm: "h-1",
        md: "h-2",
        lg: "h-3"
      },
      skeleton: {
        base: "animate-pulse bg-green-900/20 border border-green-900/10",
        text: "h-3",
        heading: "h-5 w-48",
        avatar: "w-9 h-9",
        button: "h-8 w-24",
        image: "h-32 w-full"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-[10px] uppercase tracking-wide text-green-800",
        value: "text-xs text-green-500",
        divider: "w-px h-3 bg-green-900/30 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#0a0a0a",
        toolbar_border: "#14532d33",
        btn_color: "#166534",
        btn_hover_bg: "#14532d1a",
        btn_active_bg: "#14532d33",
        btn_active_color: "#22c55e",
        editor_bg: "#000000",
        editor_border: "#14532d33",
        editor_focus: "#22c55e",
        editor_text: "#4ade80",
        content_blockquote: "#14532d",
        content_code_bg: "#0a0a0a"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-green-800 px-6 py-8 cursor-pointer hover:border-green-500 hover:bg-green-950/30 transition-colors",
        dropzone_active: "border-green-400 bg-green-950/50",
        icon: "text-green-600 mb-3",
        text: "text-[13px] font-mono text-green-500",
        hint: "text-[11px] font-mono text-green-700 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-green-800 overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 bg-red-900/80 text-red-300 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-500",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-6 py-2 bg-violet-950/50 border-b border-violet-800",
        text: "text-[12px] font-mono text-violet-400",
        stop_button: "text-[12px] font-mono text-violet-500 hover:text-violet-300 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-6 py-2.5 border-b border-green-800",
        info: "bg-green-950/50 text-green-400",
        warning: "bg-amber-950/50 text-amber-400 border-amber-800",
        maintenance: "bg-stone-900 text-green-600 border-green-900",
        title: "font-mono text-[12px] font-medium",
        body: "font-mono text-[11px] opacity-70 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 text-green-700 hover:text-green-400 transition-colors cursor-pointer",
        table_kind: "font-mono text-[11px]"
      },
      dark_mode: {
        enabled: "false",
        body_bg: "#022c22",
        sidebar_bg: "#022c22",
        sidebar_border: "#064e3b",
        sidebar_text: "#4ade80",
        sidebar_text_active: "#bbf7d0",
        topbar_bg: "#022c22",
        topbar_border: "#064e3b",
        topbar_text: "#4ade80",
        content_bg: "#022c22",
        content_text: "#86efac",
        card_bg: "#064e3b",
        card_border: "#065f46",
        table_border: "#064e3b",
        table_text: "#4ade80",
        input_bg: "#064e3b",
        input_border: "#065f46",
        input_text: "#86efac"
      }
    },

    # ─── MIDNIGHT ─────────────────────────────────────────────
    # Premium dark mode. Deep slate, violet accent, subtle glows.
    # Modern SaaS admin feel with excellent readability.
    midnight: {
      layout: {
        body: "bg-slate-950 antialiased",
        sidebar: "w-56 bg-slate-900 border-r border-slate-800 flex flex-col",
        brand: "text-sm font-bold text-violet-400",
        brand_wrapper: "px-4 pt-5 pb-4",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-slate-800",
        sidebar_divider: "w-full h-px bg-slate-800",
        overlay: "bg-black/60 backdrop-blur-sm",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-slate-900 border-b border-slate-800",
        topbar_title: "text-sm font-semibold text-slate-200",
        topbar_date: "hidden sm:block text-sm text-slate-500",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-slate-800",
        user_email: "text-sm text-slate-400 truncate",
        user_avatar: "w-8 h-8 rounded-lg bg-violet-500/20 flex items-center justify-center text-sm font-medium text-violet-400",
        menu_icon: "lg:hidden p-1.5 text-slate-400 hover:text-slate-200 rounded-md",
        signout: "flex items-center gap-1.5 text-sm text-slate-500 hover:text-slate-300 transition-colors mt-1"
      },
      stat: {
        group: "grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8",
        wrapper: "bg-slate-900 rounded-xl border border-slate-800 px-5 py-4",
        label: "text-sm font-medium text-slate-400 mb-1",
        value: "text-2xl font-bold text-slate-100 tabular-nums",
        divider: "w-full h-px bg-slate-800 mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-start gap-4 bg-slate-900 rounded-xl border border-slate-800 p-4",
        number: "flex-shrink-0 w-7 h-7 rounded-lg bg-violet-500/20 text-violet-400 text-sm font-bold flex items-center justify-center",
        title: "text-sm font-semibold text-slate-200",
        description: "text-sm text-slate-400 mt-0.5"
      },
      section_label: {
        text: "text-xs font-semibold uppercase tracking-wide text-slate-500 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-bold text-slate-100",
        subtitle: "mt-1 text-sm text-slate-400"
      },
      empty_state: {
        message: "text-sm text-slate-500 pt-4",
        subtext: "text-sm text-slate-600 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-sm font-medium bg-violet-600 text-white rounded-lg hover:bg-violet-500 transition-colors",
        secondary: "px-4 py-2 text-sm font-medium border border-slate-700 text-slate-300 rounded-lg hover:bg-slate-800 transition-colors",
        danger: "px-4 py-2 text-sm font-medium bg-red-600 text-white rounded-lg hover:bg-red-500 transition-colors",
        ghost: "px-4 py-2 text-sm font-medium text-slate-400 hover:text-slate-200 hover:bg-slate-800 rounded-lg transition-colors",
        disabled: "px-4 py-2 text-sm font-medium bg-slate-800 text-slate-600 rounded-lg cursor-not-allowed",
        sm: "px-3 py-1.5 text-xs rounded-md",
        md: "px-4 py-2 text-sm rounded-lg",
        lg: "px-6 py-2.5 text-base rounded-lg"
      },
      flash: {
        notice: "mb-6 px-4 py-3 rounded-lg bg-emerald-500/10 border border-emerald-500/20 text-sm text-emerald-400",
        alert: "mb-6 px-4 py-3 rounded-lg bg-red-500/10 border border-red-500/20 text-sm text-red-400"
      },
      nav_link: {
        active: "flex items-center px-3 py-2 text-sm font-medium rounded-lg bg-violet-500/10 text-violet-400",
        inactive: "flex items-center px-3 py-2 text-sm font-medium rounded-lg text-slate-400 hover:bg-slate-800 hover:text-slate-200",
        coming_soon: "flex items-center px-3 py-2 text-sm text-slate-600 cursor-default rounded-lg",
        badge: "ml-auto text-xs font-medium text-slate-500",
        section: "px-3 mb-1 text-xs font-semibold uppercase tracking-wide text-slate-600"
      },
      separator: {
        horizontal: "w-full border-t border-slate-800",
        vertical: "h-full border-l border-slate-800",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium rounded-full",
        default: "bg-slate-800 text-slate-300",
        success: "bg-emerald-500/10 text-emerald-400",
        warning: "bg-amber-500/10 text-amber-400",
        error: "bg-red-500/10 text-red-400",
        info: "bg-sky-500/10 text-sky-400",
        outline: "bg-transparent text-slate-400 border border-slate-700 rounded-full",
        sm: "px-2 py-0.5 text-xs",
        md: "px-2.5 py-0.5 text-xs"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 rounded-lg border",
        info: "border-sky-500/20 bg-sky-500/10 text-sky-300",
        success: "border-emerald-500/20 bg-emerald-500/10 text-emerald-300",
        warning: "border-amber-500/20 bg-amber-500/10 text-amber-300",
        error: "border-red-500/20 bg-red-500/10 text-red-300",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-semibold mb-0.5",
        message: "text-sm opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-slate-900 rounded-xl border border-slate-800",
        header: "px-5 py-4 border-b border-slate-800",
        title: "text-base font-semibold text-slate-200",
        description: "text-sm text-slate-400 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-slate-800 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center rounded-lg bg-violet-500/20 text-violet-400 font-semibold",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-lg",
        image: "rounded-lg object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left border-b border-slate-800",
        th: "text-xs font-semibold uppercase tracking-wide text-slate-500 px-4 py-3",
        body: "",
        tr: "border-b border-slate-800/50",
        tr_hover: "hover:bg-slate-800/50 transition-colors",
        tr_striped: "even:bg-slate-800/20",
        td: "px-4 py-3 text-sm text-slate-300"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-slate-800/50",
        item_horizontal: "py-3 border-b border-slate-800/50 sm:flex sm:items-baseline sm:gap-8",
        term: "text-sm font-medium text-slate-500 mb-0.5",
        term_horizontal: "text-sm font-medium text-slate-500 sm:w-40 flex-shrink-0",
        detail: "text-sm text-slate-200"
      },
      accordion: {
        wrapper: "rounded-xl border border-slate-800 divide-y divide-slate-800",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-slate-300 hover:bg-slate-800/50 transition-colors text-left cursor-pointer",
        icon: "text-slate-500 transition-transform duration-200",
        content: "px-4 pb-4 text-sm text-slate-400"
      },
      modal: {
        overlay: "fixed inset-0 bg-black/60 backdrop-blur-sm z-50 flex items-center justify-center",
        wrapper: "bg-slate-900 rounded-xl border border-slate-800 shadow-2xl mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-slate-800",
        title: "text-lg font-semibold text-slate-200",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-slate-800 flex items-center justify-end gap-3",
        close: "text-slate-500 hover:text-slate-300 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-slate-800",
        tab: "px-4 py-2 text-sm font-medium text-slate-500 hover:text-slate-300 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-medium text-violet-400 cursor-pointer border-b-2 border-violet-400 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-slate-900 rounded-lg border border-slate-800 shadow-xl min-w-[180px] py-1",
        item: "block w-full text-left px-4 py-2 text-sm text-slate-300 hover:bg-slate-800 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm text-red-400 hover:bg-red-500/10 transition-colors cursor-pointer",
        divider: "my-1 border-t border-slate-800"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-slate-800 text-xs text-slate-200 rounded-lg shadow-xl border border-slate-700 whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-slate-800 border-slate-700 rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-slate-700",
        track_on: "bg-violet-600",
        thumb: "inline-block h-4 w-4 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-1",
        thumb_on: "translate-x-6",
        label: "text-sm font-medium text-slate-300",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-3",
        item: "bg-slate-900 rounded-lg border border-slate-800 shadow-xl px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-4 border-l-sky-500",
        success: "border-l-4 border-l-emerald-500",
        warning: "border-l-4 border-l-amber-500",
        error: "border-l-4 border-l-red-500",
        title: "text-sm font-semibold text-slate-200",
        message: "text-sm text-slate-400 mt-0.5",
        dismiss: "absolute top-2 right-2 text-slate-500 hover:text-slate-300 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-violet-500 rounded-bl-lg transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1.5",
        label: "block text-sm font-medium text-slate-300",
        hint: "text-xs text-slate-500 mt-1",
        error: "text-xs text-red-400 mt-1",
        required: "text-red-400 ml-0.5"
      },
      input: {
        base: "w-full bg-slate-950 border border-slate-700 rounded-lg px-3 py-2 text-sm text-slate-200 placeholder-slate-600 focus:border-violet-500 focus:ring-1 focus:ring-violet-500 focus:outline-none transition-colors",
        error: "border-red-500 focus:border-red-400 focus:ring-red-400",
        disabled: "opacity-40 cursor-not-allowed bg-slate-900"
      },
      textarea: {
        base: "w-full bg-slate-950 border border-slate-700 rounded-lg px-3 py-2 text-sm text-slate-200 placeholder-slate-600 focus:border-violet-500 focus:ring-1 focus:ring-violet-500 focus:outline-none transition-colors resize-y",
        error: "border-red-500 focus:border-red-400 focus:ring-red-400",
        disabled: "opacity-40 cursor-not-allowed bg-slate-900"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-slate-950 border border-slate-700 rounded-lg px-3 py-2 pr-8 text-sm text-slate-200 focus:border-violet-500 focus:ring-1 focus:ring-violet-500 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-slate-500",
        error: "border-red-500 focus:border-red-400 focus:ring-red-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 rounded border-slate-600 bg-slate-950 text-violet-600 focus:ring-violet-500 cursor-pointer",
        label: "text-sm text-slate-300",
        hint: "text-xs text-slate-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-3",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-slate-600 bg-slate-950 text-violet-600 focus:ring-violet-500 cursor-pointer",
        label: "text-sm text-slate-300",
        hint: "text-xs text-slate-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "bg-slate-900 rounded-xl border border-slate-800 divide-y divide-slate-800",
        item: "px-5 py-4",
        item_hover: "hover:bg-slate-800/50 transition-colors",
        label: "text-xs font-medium text-slate-500",
        value: "text-sm text-slate-200",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-px bg-slate-800"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-slate-950 border border-slate-700 rounded-lg pl-9 pr-3 py-2 text-sm text-slate-200 placeholder-slate-600 focus:border-violet-500 focus:ring-1 focus:ring-violet-500 focus:outline-none transition-colors",
        search_icon: "absolute left-3 top-1/2 -translate-y-1/2 text-slate-500",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1.5 text-sm font-medium text-slate-400 hover:text-slate-200 hover:bg-slate-800 rounded-lg transition-colors cursor-pointer",
        item_active: "px-3 py-1.5 text-sm font-medium text-white bg-violet-600 rounded-lg",
        item_disabled: "px-3 py-1.5 text-sm text-slate-600 cursor-not-allowed",
        ellipsis: "px-2 text-sm text-slate-600",
        info: "text-sm text-slate-400"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-sm font-medium text-slate-400 hover:text-violet-400 transition-colors",
        item_active: "text-sm font-semibold text-slate-200",
        separator: "text-slate-600 text-xs"
      },
      progress: {
        track: "w-full bg-slate-800 rounded-full overflow-hidden",
        bar: "h-full bg-violet-500 rounded-full transition-all duration-300",
        bar_success: "h-full bg-emerald-500 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-amber-500 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-500 rounded-full transition-all duration-300",
        bar_info: "h-full bg-sky-500 rounded-full transition-all duration-300",
        label: "text-xs text-slate-500 mt-1",
        sm: "h-1.5",
        md: "h-2.5",
        lg: "h-4"
      },
      skeleton: {
        base: "animate-pulse bg-slate-800 rounded-lg",
        text: "h-3 rounded-md",
        heading: "h-5 w-48 rounded-md",
        avatar: "w-9 h-9 rounded-lg",
        button: "h-9 w-24 rounded-lg",
        image: "h-32 w-full rounded-xl"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-xs font-medium text-slate-500",
        value: "text-sm text-slate-200",
        divider: "w-px h-3 bg-slate-700 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#0f172a",
        toolbar_border: "#334155",
        btn_color: "#64748b",
        btn_hover_bg: "#1e293b",
        btn_active_bg: "#7c3aed33",
        btn_active_color: "#a78bfa",
        editor_bg: "#020617",
        editor_border: "#334155",
        editor_focus: "#7c3aed",
        editor_text: "#e2e8f0",
        content_blockquote: "#475569",
        content_code_bg: "#1e293b"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-slate-600 rounded-lg px-6 py-8 cursor-pointer hover:border-sky-500/50 hover:bg-sky-950/20 transition-colors",
        dropzone_active: "border-sky-400 bg-sky-950/30",
        icon: "text-slate-500 mb-3",
        text: "text-[13px] text-slate-400",
        hint: "text-[11px] text-slate-500 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-slate-700 rounded-md overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 rounded bg-slate-800/90 text-slate-400 hover:text-white opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-500",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-950/30 border-b border-violet-800/50",
        text: "text-[12px] text-violet-400",
        stop_button: "text-[12px] text-violet-500 hover:text-violet-300 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-sky-950/50 border-b border-sky-800/50 text-sky-300",
        warning: "bg-amber-950/50 border-b border-amber-800/50 text-amber-300",
        maintenance: "bg-slate-800/50 border-b border-slate-700 text-slate-300",
        title: "text-[13px] font-medium",
        body: "text-[12px] opacity-70 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "text-[11px] italic"
      },
      dark_mode: {
        enabled: "false",
        body_bg: "#0f172a",
        sidebar_bg: "#020617",
        sidebar_border: "#1e293b",
        sidebar_text: "#64748b",
        sidebar_text_active: "#e2e8f0",
        topbar_bg: "#0f172a",
        topbar_border: "#1e293b",
        topbar_text: "#e2e8f0",
        content_bg: "#0f172a",
        content_text: "#cbd5e1",
        card_bg: "#1e293b",
        card_border: "#334155",
        table_border: "#1e293b",
        table_text: "#64748b",
        input_bg: "#1e293b",
        input_border: "#334155",
        input_text: "#cbd5e1"
      }
    },

    # ─── ROSE GOLD ────────────────────────────────────────────
    # Luxe, editorial, fashion-forward. Warm rose/blush palette,
    # thin hairline borders, light weight typography, champagne accent.
    rose_gold: {
      layout: {
        body: "bg-[#faf8f6] antialiased",
        sidebar: "w-52 bg-[#faf8f6] border-r border-rose-200/50 flex flex-col",
        brand: "text-sm font-light tracking-[0.25em] uppercase text-rose-400",
        brand_wrapper: "px-5 pt-7 pb-6",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-rose-200/40",
        sidebar_divider: "w-full h-px bg-rose-200/40",
        overlay: "bg-rose-950/20 backdrop-blur-[2px]",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-[#faf8f6] border-b border-rose-200/50",
        topbar_title: "text-sm font-light tracking-wide text-rose-700",
        topbar_date: "hidden sm:block text-xs text-rose-300 font-light",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-5 py-5",
        user_email: "text-xs text-rose-300 truncate font-light",
        user_avatar: nil,
        menu_icon: "lg:hidden p-1 text-rose-300 hover:text-rose-500",
        signout: "flex items-center gap-1.5 text-xs text-rose-300 hover:text-rose-500 transition-colors font-light tracking-wide"
      },
      stat: {
        group: "flex gap-12 mb-12",
        wrapper: "",
        label: "text-[11px] font-light uppercase tracking-[0.2em] text-rose-300 mb-1",
        value: "text-3xl font-extralight text-rose-700 tabular-nums",
        divider: "w-full h-px bg-rose-200/40 mb-10"
      },
      step: {
        group: "space-y-6",
        wrapper: "flex items-baseline gap-5",
        number: "text-xs font-light text-rose-300 select-none tracking-wide",
        title: "text-sm font-normal text-rose-700",
        description: "text-sm font-light text-rose-400 mt-0.5"
      },
      section_label: {
        text: "text-[11px] font-light uppercase tracking-[0.2em] text-rose-300 mb-5"
      },
      page_header: {
        wrapper: "mb-10",
        heading: "text-2xl font-extralight tracking-tight text-rose-800",
        subtitle: "mt-2 text-sm font-light text-rose-400"
      },
      empty_state: {
        message: "text-sm font-light text-rose-300 pt-4",
        subtext: "text-xs font-light text-rose-300 mt-1"
      },
      button: {
        primary: "px-5 py-2 text-xs font-light uppercase tracking-[0.15em] bg-rose-400 text-white hover:bg-rose-500 transition-colors rounded-sm",
        secondary: "px-5 py-2 text-xs font-light uppercase tracking-[0.15em] border border-rose-200 text-rose-500 hover:bg-rose-50 transition-colors rounded-sm",
        danger: "px-5 py-2 text-xs font-light uppercase tracking-[0.15em] bg-red-400 text-white hover:bg-red-500 transition-colors rounded-sm",
        ghost: "px-5 py-2 text-xs font-light uppercase tracking-[0.15em] text-rose-400 hover:text-rose-600 transition-colors",
        disabled: "px-5 py-2 text-xs font-light uppercase tracking-[0.15em] bg-rose-50 text-rose-200 cursor-not-allowed rounded-sm",
        sm: "px-3 py-1 text-[11px]",
        md: "px-5 py-2 text-xs",
        lg: "px-7 py-2.5 text-sm"
      },
      flash: {
        notice: "mb-6 text-sm font-light text-rose-400",
        alert: "mb-6 text-sm font-light text-rose-600"
      },
      nav_link: {
        active: "flex items-center gap-2.5 px-4 py-1.5 text-sm font-normal text-rose-600 tracking-wide",
        inactive: "flex items-center gap-2.5 px-4 py-1.5 text-sm font-light text-rose-300 hover:text-rose-500 transition-colors tracking-wide",
        coming_soon: "block px-4 py-1.5 text-sm font-light text-rose-200 cursor-default",
        badge: "text-[10px] font-light uppercase tracking-widest text-rose-200",
        section: "px-4 mb-1 text-[10px] font-light uppercase tracking-[0.2em] text-rose-200"
      },
      separator: {
        horizontal: "w-full border-t border-rose-200/40",
        vertical: "h-full border-l border-rose-200/40",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-light uppercase tracking-wide rounded-sm",
        default: "bg-rose-50 text-rose-500 border border-rose-100",
        success: "bg-emerald-50 text-emerald-600 border border-emerald-100",
        warning: "bg-amber-50 text-amber-600 border border-amber-100",
        error: "bg-red-50 text-red-500 border border-red-100",
        info: "bg-sky-50 text-sky-600 border border-sky-100",
        outline: "bg-transparent text-rose-400 border border-rose-200",
        sm: "px-2 py-0.5 text-[10px]",
        md: "px-2.5 py-0.5 text-[11px]"
      },
      alert: {
        wrapper: "flex gap-3 py-3 border-b",
        info: "border-sky-200/50 text-sky-700",
        success: "border-emerald-200/50 text-emerald-700",
        warning: "border-amber-200/50 text-amber-700",
        error: "border-red-200/50 text-red-600",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-normal mb-0.5",
        message: "text-sm font-light opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white border border-rose-100/60 rounded-sm",
        header: "px-5 py-4 border-b border-rose-50",
        title: "text-sm font-normal text-rose-700",
        description: "text-sm font-light text-rose-400 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-rose-50 flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center bg-rose-100 text-rose-500 font-light rounded-sm",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-base",
        image: "rounded-sm object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left border-b border-rose-200/40",
        th: "text-[11px] font-light uppercase tracking-[0.15em] text-rose-300 pb-3",
        body: "",
        tr: "border-b border-rose-100/40",
        tr_hover: "hover:bg-rose-50/50 transition-colors",
        tr_striped: "even:bg-rose-50/30",
        td: "py-3 text-sm font-light text-rose-600"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-rose-100/40",
        item_horizontal: "py-3 border-b border-rose-100/40 flex items-baseline gap-8",
        term: "text-[11px] font-light uppercase tracking-[0.15em] text-rose-300 mb-0.5",
        term_horizontal: "text-[11px] font-light uppercase tracking-[0.15em] text-rose-300 w-36 flex-shrink-0",
        detail: "text-sm font-light text-rose-600"
      },
      accordion: {
        wrapper: "border border-rose-100/60 divide-y divide-rose-100/40 rounded-sm",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-normal text-rose-600 hover:bg-rose-50/50 transition-colors text-left cursor-pointer",
        icon: "text-rose-300 transition-transform duration-200",
        content: "px-4 pb-4 text-sm font-light text-rose-400"
      },
      modal: {
        overlay: "fixed inset-0 bg-rose-950/15 backdrop-blur-[2px] z-50 flex items-center justify-center",
        wrapper: "bg-white border border-rose-100 rounded-sm shadow-sm mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-rose-50",
        title: "text-base font-normal text-rose-700",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-rose-50 flex items-center justify-end gap-3",
        close: "text-rose-300 hover:text-rose-500 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-rose-200/40",
        tab: "px-4 py-2 text-sm font-light text-rose-300 hover:text-rose-500 transition-colors cursor-pointer border-b border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-normal text-rose-600 cursor-pointer border-b border-rose-400 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white border border-rose-100 shadow-sm min-w-[180px] rounded-sm",
        item: "block w-full text-left px-4 py-2 text-sm font-light text-rose-600 hover:bg-rose-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm font-light text-red-500 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-rose-50"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-rose-800 text-xs font-light text-rose-100 rounded-sm shadow-sm whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-rose-800 rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-5 w-9 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-rose-200",
        track_on: "bg-rose-400",
        thumb: "inline-block h-3.5 w-3.5 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-0.5",
        thumb_on: "translate-x-[18px]",
        label: "text-sm font-light text-rose-600",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-2",
        item: "bg-white border border-rose-100 shadow-sm px-5 py-3 min-w-[280px] max-w-sm rounded-sm relative",
        info: "border-l-2 border-l-sky-300",
        success: "border-l-2 border-l-emerald-300",
        warning: "border-l-2 border-l-amber-300",
        error: "border-l-2 border-l-red-300",
        title: "text-sm font-normal text-rose-700",
        message: "text-xs font-light text-rose-400 mt-0.5",
        dismiss: "absolute top-2 right-2 text-rose-300 hover:text-rose-500 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-0.5 bg-rose-300 transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1",
        label: "block text-[11px] font-light uppercase tracking-[0.15em] text-rose-400",
        hint: "text-[11px] font-light text-rose-300 mt-1",
        error: "text-[11px] font-light text-red-400 mt-1",
        required: "text-red-300 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-rose-200 rounded-sm px-3 py-2 text-sm font-light text-rose-700 placeholder-rose-200 focus:border-rose-400 focus:outline-none transition-colors",
        error: "border-red-200 focus:border-red-400",
        disabled: "opacity-40 cursor-not-allowed bg-rose-50/50"
      },
      textarea: {
        base: "w-full bg-white border border-rose-200 rounded-sm px-3 py-2 text-sm font-light text-rose-700 placeholder-rose-200 focus:border-rose-400 focus:outline-none transition-colors resize-y",
        error: "border-red-200 focus:border-red-400",
        disabled: "opacity-40 cursor-not-allowed bg-rose-50/50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-rose-200 rounded-sm px-3 py-2 pr-8 text-sm font-light text-rose-700 focus:border-rose-400 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-rose-300",
        error: "border-red-200 focus:border-red-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2.5",
        input: "mt-0.5 h-4 w-4 rounded-sm border-rose-300 text-rose-400 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-sm font-light text-rose-600",
        hint: "text-[11px] font-light text-rose-300",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-2",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2.5",
        input: "mt-0.5 h-4 w-4 border-rose-300 text-rose-400 focus:ring-0 focus:ring-offset-0 cursor-pointer",
        label: "text-sm font-light text-rose-600",
        hint: "text-[11px] font-light text-rose-300",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "border border-rose-100/60 divide-y divide-rose-100/40 rounded-sm",
        item: "px-5 py-4",
        item_hover: "hover:bg-rose-50/50 transition-colors",
        label: "text-[11px] font-light uppercase tracking-[0.15em] text-rose-300",
        value: "text-sm font-light text-rose-600",
        actions: "pt-2 flex items-center gap-3",
        divider: "w-full h-px bg-rose-200/40"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-rose-200 rounded-sm pl-8 pr-3 py-2 text-sm font-light text-rose-700 placeholder-rose-200 focus:border-rose-400 focus:outline-none transition-colors",
        search_icon: "absolute left-2.5 top-1/2 -translate-y-1/2 text-rose-300",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1 text-sm font-light text-rose-300 hover:text-rose-600 transition-colors cursor-pointer",
        item_active: "px-3 py-1 text-sm font-normal text-rose-600 border-b border-rose-400",
        item_disabled: "px-3 py-1 text-sm font-light text-rose-200 cursor-not-allowed",
        ellipsis: "px-2 text-sm text-rose-200",
        info: "text-xs font-light text-rose-300"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-1.5 mb-4",
        item: "text-sm font-light text-rose-300 hover:text-rose-500 transition-colors",
        item_active: "text-sm font-normal text-rose-700",
        separator: "text-rose-200 text-xs"
      },
      progress: {
        track: "w-full bg-rose-100 rounded-full overflow-hidden",
        bar: "h-full bg-rose-400 rounded-full transition-all duration-300",
        bar_success: "h-full bg-emerald-400 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-amber-400 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-400 rounded-full transition-all duration-300",
        bar_info: "h-full bg-sky-400 rounded-full transition-all duration-300",
        label: "text-[11px] font-light text-rose-300 mt-1",
        sm: "h-1",
        md: "h-2",
        lg: "h-3"
      },
      skeleton: {
        base: "animate-pulse bg-rose-100 rounded-sm",
        text: "h-3 rounded-sm",
        heading: "h-5 w-48 rounded-sm",
        avatar: "w-9 h-9 rounded-sm",
        button: "h-8 w-24 rounded-sm",
        image: "h-32 w-full rounded-sm"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-[11px] font-light uppercase tracking-[0.15em] text-rose-300",
        value: "text-sm font-light text-rose-600",
        divider: "w-px h-3 bg-rose-200/40 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#fdf2f8",
        toolbar_border: "#fce7f3",
        btn_color: "#be185d",
        btn_hover_bg: "#fce7f3",
        btn_active_bg: "#fbcfe8",
        btn_active_color: "#9f1239",
        editor_bg: "#fffbfe",
        editor_border: "#fce7f3",
        editor_focus: "#ec4899",
        editor_text: "#881337",
        content_blockquote: "#fbcfe8",
        content_code_bg: "#fdf2f8"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-rose-200 rounded-lg px-6 py-8 cursor-pointer hover:border-rose-300 hover:bg-rose-50/50 transition-colors",
        dropzone_active: "border-rose-400 bg-rose-50",
        icon: "text-rose-300 mb-3",
        text: "text-[13px] text-rose-700",
        hint: "text-[11px] text-rose-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-rose-100 rounded-lg overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-1 rounded-full bg-white/90 shadow-sm text-rose-400 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-sky-50 border-b border-sky-100 text-sky-800",
        warning: "bg-amber-50 border-b border-amber-100 text-amber-800",
        maintenance: "bg-rose-50 border-b border-rose-100 text-rose-700",
        title: "text-[13px] font-medium",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "text-[11px] italic"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#1c1917",
        sidebar_bg: "#0c0a09",
        sidebar_border: "#292524",
        sidebar_text: "#a8a29e",
        sidebar_text_active: "#fecdd3",
        topbar_bg: "#1c1917",
        topbar_border: "#292524",
        topbar_text: "#fecdd3",
        content_bg: "#1c1917",
        content_text: "#e7e5e4",
        card_bg: "#292524",
        card_border: "#44403c",
        table_border: "#292524",
        table_text: "#a8a29e",
        input_bg: "#292524",
        input_border: "#44403c",
        input_text: "#e7e5e4"
      }
    },

    # ─── COUNSEL ──────────────────────────────────────────────
    # Law firms & legal practices. Deep navy authority, warm gold
    # accent, serif-influenced type, traditional gravitas with
    # modern clarity. Feels like mahogany and leather.
    counsel: {
      layout: {
        body: "bg-[#f7f6f3] antialiased",
        sidebar: "w-56 bg-[#1a2332] border-r border-[#243044] flex flex-col",
        brand: "text-sm font-semibold tracking-wide text-amber-400/90",
        brand_wrapper: "px-5 pt-5 pb-4",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-[#243044]",
        sidebar_divider: "w-full h-px bg-[#243044]",
        overlay: "bg-[#1a2332]/60 backdrop-blur-sm",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-white border-b border-stone-200",
        topbar_title: "text-sm font-semibold text-[#1a2332]",
        topbar_date: "hidden sm:block text-sm text-stone-400",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-[#243044]",
        user_email: "text-xs text-slate-400 truncate",
        user_avatar: "w-8 h-8 rounded bg-amber-400/20 flex items-center justify-center text-xs font-semibold text-amber-400",
        menu_icon: "lg:hidden p-1.5 text-slate-400 hover:text-white rounded",
        signout: "flex items-center gap-1.5 text-xs text-slate-500 hover:text-slate-300 transition-colors mt-1"
      },
      stat: {
        group: "grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8",
        wrapper: "bg-white rounded border border-stone-200 px-5 py-4",
        label: "text-xs font-medium uppercase tracking-wide text-stone-400 mb-1",
        value: "text-2xl font-bold text-[#1a2332] tabular-nums",
        divider: "w-full h-px bg-stone-200 mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-start gap-4 bg-white rounded border border-stone-200 p-4",
        number: "flex-shrink-0 w-7 h-7 rounded bg-[#1a2332] text-amber-400 text-xs font-bold flex items-center justify-center",
        title: "text-sm font-semibold text-[#1a2332]",
        description: "text-sm text-stone-500 mt-0.5"
      },
      section_label: {
        text: "text-xs font-semibold uppercase tracking-wide text-stone-400 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-bold text-[#1a2332]",
        subtitle: "mt-1 text-sm text-stone-500"
      },
      empty_state: {
        message: "text-sm text-stone-400 pt-4",
        subtext: "text-sm text-stone-400 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-sm font-medium bg-[#1a2332] text-white rounded hover:bg-[#243044] transition-colors",
        secondary: "px-4 py-2 text-sm font-medium border border-stone-300 text-stone-600 rounded hover:bg-stone-50 transition-colors",
        danger: "px-4 py-2 text-sm font-medium bg-red-700 text-white rounded hover:bg-red-800 transition-colors",
        ghost: "px-4 py-2 text-sm font-medium text-stone-500 hover:text-[#1a2332] hover:bg-stone-100 rounded transition-colors",
        disabled: "px-4 py-2 text-sm font-medium bg-stone-100 text-stone-400 rounded cursor-not-allowed",
        sm: "px-3 py-1.5 text-xs rounded",
        md: "px-4 py-2 text-sm rounded",
        lg: "px-6 py-2.5 text-base rounded"
      },
      flash: {
        notice: "mb-6 px-4 py-3 rounded bg-emerald-50 border border-emerald-200 text-sm text-emerald-800",
        alert: "mb-6 px-4 py-3 rounded bg-red-50 border border-red-200 text-sm text-red-800"
      },
      nav_link: {
        active: "flex items-center px-3 py-2 text-sm font-medium rounded bg-white/[0.08] text-amber-400/90 border-l-2 border-amber-400",
        inactive: "flex items-center px-3 py-2 text-sm font-medium rounded text-slate-400 hover:text-white hover:bg-white/[0.04] border-l-2 border-transparent transition-colors",
        coming_soon: "flex items-center px-3 py-2 text-sm text-slate-600 cursor-default rounded",
        badge: "ml-auto text-[10px] font-medium uppercase text-slate-500",
        section: "px-3 mb-1 text-[10px] font-semibold uppercase tracking-widest text-slate-500"
      },
      separator: {
        horizontal: "w-full border-t border-stone-200",
        vertical: "h-full border-l border-stone-200",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium rounded",
        default: "bg-stone-100 text-stone-600",
        success: "bg-emerald-50 text-emerald-700",
        warning: "bg-amber-50 text-amber-700",
        error: "bg-red-50 text-red-700",
        info: "bg-sky-50 text-sky-700",
        outline: "bg-transparent text-stone-500 border border-stone-300 rounded",
        sm: "px-2 py-0.5 text-xs",
        md: "px-2.5 py-0.5 text-xs"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 rounded border",
        info: "border-sky-200 bg-sky-50 text-sky-800",
        success: "border-emerald-200 bg-emerald-50 text-emerald-800",
        warning: "border-amber-200 bg-amber-50 text-amber-800",
        error: "border-red-200 bg-red-50 text-red-800",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-semibold mb-0.5",
        message: "text-sm opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white rounded border border-stone-200",
        header: "px-5 py-4 border-b border-stone-100",
        title: "text-base font-semibold text-[#1a2332]",
        description: "text-sm text-stone-500 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-stone-100 bg-stone-50 rounded-b flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center rounded bg-[#1a2332] text-amber-400 font-semibold",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-base",
        image: "rounded object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left bg-stone-50 border-b border-stone-200",
        th: "text-xs font-semibold uppercase tracking-wide text-stone-400 px-4 py-3",
        body: "",
        tr: "border-b border-stone-100",
        tr_hover: "hover:bg-stone-50 transition-colors",
        tr_striped: "even:bg-stone-50/50",
        td: "px-4 py-3 text-sm text-stone-700"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-stone-100",
        item_horizontal: "py-3 border-b border-stone-100 sm:flex sm:items-baseline sm:gap-8",
        term: "text-xs font-semibold uppercase tracking-wide text-stone-400 mb-0.5",
        term_horizontal: "text-xs font-semibold uppercase tracking-wide text-stone-400 sm:w-40 flex-shrink-0",
        detail: "text-sm text-stone-700"
      },
      accordion: {
        wrapper: "rounded border border-stone-200 divide-y divide-stone-200",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-stone-700 hover:bg-stone-50 transition-colors text-left cursor-pointer",
        icon: "text-stone-400 transition-transform duration-200",
        content: "px-4 pb-4 text-sm text-stone-500"
      },
      modal: {
        overlay: "fixed inset-0 bg-[#1a2332]/50 backdrop-blur-sm z-50 flex items-center justify-center",
        wrapper: "bg-white rounded border border-stone-200 shadow-xl mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-stone-200",
        title: "text-lg font-semibold text-[#1a2332]",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-stone-100 bg-stone-50 rounded-b flex items-center justify-end gap-3",
        close: "text-stone-400 hover:text-stone-600 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-stone-200",
        tab: "px-4 py-2 text-sm font-medium text-stone-400 hover:text-stone-700 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-medium text-[#1a2332] cursor-pointer border-b-2 border-amber-400 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white rounded border border-stone-200 shadow-lg min-w-[180px] py-1",
        item: "block w-full text-left px-4 py-2 text-sm text-stone-700 hover:bg-stone-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-stone-100"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-[#1a2332] text-xs text-white rounded shadow-lg whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-[#1a2332] rotate-45"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-stone-200",
        track_on: "bg-[#1a2332]",
        thumb: "inline-block h-4 w-4 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-1",
        thumb_on: "translate-x-6",
        label: "text-sm font-medium text-stone-700",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-3",
        item: "bg-white rounded border border-stone-200 shadow-lg px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-4 border-l-sky-500",
        success: "border-l-4 border-l-emerald-600",
        warning: "border-l-4 border-l-amber-500",
        error: "border-l-4 border-l-red-600",
        title: "text-sm font-semibold text-[#1a2332]",
        message: "text-sm text-stone-500 mt-0.5",
        dismiss: "absolute top-2 right-2 text-stone-400 hover:text-stone-600 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-amber-400 rounded-bl transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1.5",
        label: "block text-sm font-medium text-stone-600",
        hint: "text-xs text-stone-400 mt-1",
        error: "text-xs text-red-600 mt-1",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-stone-300 rounded px-3 py-2 text-sm text-stone-800 placeholder-stone-400 focus:border-[#1a2332] focus:ring-1 focus:ring-[#1a2332] focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-stone-50"
      },
      textarea: {
        base: "w-full bg-white border border-stone-300 rounded px-3 py-2 text-sm text-stone-800 placeholder-stone-400 focus:border-[#1a2332] focus:ring-1 focus:ring-[#1a2332] focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-stone-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-stone-300 rounded px-3 py-2 pr-8 text-sm text-stone-800 focus:border-[#1a2332] focus:ring-1 focus:ring-[#1a2332] focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-stone-400",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 rounded border-stone-300 text-[#1a2332] focus:ring-[#1a2332] cursor-pointer",
        label: "text-sm text-stone-700",
        hint: "text-xs text-stone-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-3",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-stone-300 text-[#1a2332] focus:ring-[#1a2332] cursor-pointer",
        label: "text-sm text-stone-700",
        hint: "text-xs text-stone-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "bg-white rounded border border-stone-200 divide-y divide-stone-100",
        item: "px-5 py-4",
        item_hover: "hover:bg-stone-50 transition-colors",
        label: "text-xs font-medium uppercase tracking-wide text-stone-400",
        value: "text-sm text-stone-700",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-px bg-stone-200"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-stone-300 rounded pl-9 pr-3 py-2 text-sm text-stone-800 placeholder-stone-400 focus:border-[#1a2332] focus:ring-1 focus:ring-[#1a2332] focus:outline-none transition-colors",
        search_icon: "absolute left-3 top-1/2 -translate-y-1/2 text-stone-400",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1.5 text-sm font-medium text-stone-500 hover:text-[#1a2332] hover:bg-stone-100 rounded transition-colors cursor-pointer",
        item_active: "px-3 py-1.5 text-sm font-medium text-white bg-[#1a2332] rounded",
        item_disabled: "px-3 py-1.5 text-sm text-stone-300 cursor-not-allowed",
        ellipsis: "px-2 text-sm text-stone-400",
        info: "text-sm text-stone-500"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-sm font-medium text-stone-400 hover:text-amber-600 transition-colors",
        item_active: "text-sm font-semibold text-[#1a2332]",
        separator: "text-stone-300 text-xs"
      },
      progress: {
        track: "w-full bg-stone-200 rounded-full overflow-hidden",
        bar: "h-full bg-[#1a2332] rounded-full transition-all duration-300",
        bar_success: "h-full bg-emerald-600 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-amber-500 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-600 rounded-full transition-all duration-300",
        bar_info: "h-full bg-sky-500 rounded-full transition-all duration-300",
        label: "text-xs text-stone-500 mt-1",
        sm: "h-1.5",
        md: "h-2.5",
        lg: "h-4"
      },
      skeleton: {
        base: "animate-pulse bg-stone-200 rounded",
        text: "h-3 rounded",
        heading: "h-5 w-48 rounded",
        avatar: "w-9 h-9 rounded",
        button: "h-9 w-24 rounded",
        image: "h-32 w-full rounded"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-xs font-medium uppercase tracking-wide text-stone-400",
        value: "text-sm text-stone-700",
        divider: "w-px h-3 bg-stone-200 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#fafaf9",
        toolbar_border: "#e7e5e4",
        btn_color: "#78716c",
        btn_hover_bg: "#f5f5f4",
        btn_active_bg: "#e7e5e4",
        btn_active_color: "#292524",
        editor_bg: "#ffffff",
        editor_border: "#d6d3d1",
        editor_focus: "#78716c",
        editor_text: "#1c1917",
        content_blockquote: "#d6d3d1",
        content_code_bg: "#f5f5f4"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-slate-300 rounded px-6 py-8 cursor-pointer hover:border-sky-400 hover:bg-sky-50/30 transition-colors",
        dropzone_active: "border-sky-500 bg-sky-50/50",
        icon: "text-slate-400 mb-3",
        text: "text-[13px] text-slate-600",
        hint: "text-[11px] text-slate-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-slate-200 rounded overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 rounded bg-white/90 text-slate-400 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-sky-50 border-b border-sky-100 text-sky-800",
        warning: "bg-amber-50 border-b border-amber-100 text-amber-800",
        maintenance: "bg-slate-100 border-b border-slate-200 text-slate-600",
        title: "font-serif text-[13px] font-medium",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "font-serif text-[11px] italic"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#0f172a",
        sidebar_bg: "#020617",
        sidebar_border: "#1e293b",
        sidebar_text: "#94a3b8",
        sidebar_text_active: "#f1f5f9",
        topbar_bg: "#0f172a",
        topbar_border: "#1e293b",
        topbar_text: "#f1f5f9",
        content_bg: "#0f172a",
        content_text: "#e2e8f0",
        card_bg: "#1e293b",
        card_border: "#334155",
        table_border: "#1e293b",
        table_text: "#94a3b8",
        input_bg: "#1e293b",
        input_border: "#334155",
        input_text: "#e2e8f0"
      }
    },

    # ─── CLINICAL ─────────────────────────────────────────────
    # Healthcare, medical practices, clinics. Pristine white,
    # calming teal accent, very clean spacing, gentle rounded
    # corners, soft shadows. Feels sterile-clean but not cold.
    clinical: {
      layout: {
        body: "bg-[#f0f5f4] antialiased",
        sidebar: "w-56 bg-white border-r border-teal-100 flex flex-col",
        brand: "text-base font-bold text-teal-700",
        brand_wrapper: "px-5 pt-5 pb-4",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-teal-100",
        sidebar_divider: "w-full h-px bg-teal-100",
        overlay: "bg-teal-950/30 backdrop-blur-sm",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-white border-b border-teal-100",
        topbar_title: "text-sm font-semibold text-teal-900",
        topbar_date: "hidden sm:block text-sm text-teal-400",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-teal-100",
        user_email: "text-sm text-teal-500 truncate",
        user_avatar: "w-8 h-8 rounded-full bg-teal-100 flex items-center justify-center text-sm font-medium text-teal-600",
        menu_icon: "lg:hidden p-1.5 text-teal-400 hover:text-teal-600 rounded-md",
        signout: "flex items-center gap-1.5 text-sm text-teal-400 hover:text-teal-600 transition-colors mt-1"
      },
      stat: {
        group: "grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8",
        wrapper: "bg-white rounded-xl border border-teal-100 px-5 py-4 shadow-sm",
        label: "text-sm font-medium text-teal-500 mb-1",
        value: "text-2xl font-bold text-teal-900 tabular-nums",
        divider: "w-full h-px bg-teal-100 mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-start gap-4 bg-white rounded-xl border border-teal-100 p-4",
        number: "flex-shrink-0 w-7 h-7 rounded-full bg-teal-100 text-teal-600 text-sm font-bold flex items-center justify-center",
        title: "text-sm font-semibold text-teal-900",
        description: "text-sm text-teal-500 mt-0.5"
      },
      section_label: {
        text: "text-xs font-semibold uppercase tracking-wide text-teal-400 mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-bold text-teal-900",
        subtitle: "mt-1 text-sm text-teal-500"
      },
      empty_state: {
        message: "text-sm text-teal-400 pt-4",
        subtext: "text-sm text-teal-400 mt-1"
      },
      button: {
        primary: "px-4 py-2 text-sm font-medium bg-teal-600 text-white rounded-lg hover:bg-teal-700 transition-colors",
        secondary: "px-4 py-2 text-sm font-medium border border-teal-200 text-teal-700 rounded-lg hover:bg-teal-50 transition-colors",
        danger: "px-4 py-2 text-sm font-medium bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors",
        ghost: "px-4 py-2 text-sm font-medium text-teal-500 hover:text-teal-700 hover:bg-teal-50 rounded-lg transition-colors",
        disabled: "px-4 py-2 text-sm font-medium bg-teal-50 text-teal-300 rounded-lg cursor-not-allowed",
        sm: "px-3 py-1.5 text-xs rounded-md",
        md: "px-4 py-2 text-sm rounded-lg",
        lg: "px-6 py-2.5 text-base rounded-lg"
      },
      flash: {
        notice: "mb-6 px-4 py-3 rounded-lg bg-emerald-50 border border-emerald-200 text-sm text-emerald-700",
        alert: "mb-6 px-4 py-3 rounded-lg bg-red-50 border border-red-200 text-sm text-red-700"
      },
      nav_link: {
        active: "flex items-center px-3 py-2 text-sm font-medium rounded-lg bg-teal-50 text-teal-700",
        inactive: "flex items-center px-3 py-2 text-sm font-medium rounded-lg text-teal-600 hover:bg-teal-50",
        coming_soon: "flex items-center px-3 py-2 text-sm text-teal-300 cursor-default rounded-lg",
        badge: "ml-auto text-xs font-medium text-teal-400",
        section: "px-3 mb-1 text-xs font-semibold uppercase tracking-wide text-teal-400"
      },
      separator: {
        horizontal: "w-full border-t border-teal-100",
        vertical: "h-full border-l border-teal-100",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium rounded-full",
        default: "bg-teal-50 text-teal-600",
        success: "bg-emerald-50 text-emerald-700",
        warning: "bg-amber-50 text-amber-700",
        error: "bg-red-50 text-red-700",
        info: "bg-sky-50 text-sky-700",
        outline: "bg-transparent text-teal-500 border border-teal-200 rounded-full",
        sm: "px-2 py-0.5 text-xs",
        md: "px-2.5 py-0.5 text-xs"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 rounded-lg border",
        info: "border-sky-200 bg-sky-50 text-sky-800",
        success: "border-emerald-200 bg-emerald-50 text-emerald-800",
        warning: "border-amber-200 bg-amber-50 text-amber-800",
        error: "border-red-200 bg-red-50 text-red-800",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-semibold mb-0.5",
        message: "text-sm opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white rounded-xl border border-teal-100 shadow-sm",
        header: "px-5 py-4 border-b border-teal-50",
        title: "text-base font-semibold text-teal-900",
        description: "text-sm text-teal-500 mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-teal-50 bg-teal-50/30 rounded-b-xl flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center rounded-full bg-teal-100 text-teal-600 font-semibold",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-lg",
        image: "rounded-full object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left bg-teal-50/50 border-b border-teal-100",
        th: "text-xs font-semibold uppercase tracking-wide text-teal-500 px-4 py-3",
        body: "",
        tr: "border-b border-teal-50",
        tr_hover: "hover:bg-teal-50/50 transition-colors",
        tr_striped: "even:bg-teal-50/30",
        td: "px-4 py-3 text-sm text-teal-800"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-teal-50",
        item_horizontal: "py-3 border-b border-teal-50 sm:flex sm:items-baseline sm:gap-8",
        term: "text-sm font-medium text-teal-500 mb-0.5",
        term_horizontal: "text-sm font-medium text-teal-500 sm:w-40 flex-shrink-0",
        detail: "text-sm text-teal-900"
      },
      accordion: {
        wrapper: "rounded-xl border border-teal-100 divide-y divide-teal-100",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-teal-800 hover:bg-teal-50/50 transition-colors text-left cursor-pointer",
        icon: "text-teal-400 transition-transform duration-200",
        content: "px-4 pb-4 text-sm text-teal-600"
      },
      modal: {
        overlay: "fixed inset-0 bg-teal-950/30 backdrop-blur-sm z-50 flex items-center justify-center",
        wrapper: "bg-white rounded-xl border border-teal-100 shadow-xl mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-teal-100",
        title: "text-lg font-semibold text-teal-900",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-teal-50 bg-teal-50/30 rounded-b-xl flex items-center justify-end gap-3",
        close: "text-teal-400 hover:text-teal-600 transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-teal-100",
        tab: "px-4 py-2 text-sm font-medium text-teal-400 hover:text-teal-700 transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-medium text-teal-700 cursor-pointer border-b-2 border-teal-600 -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white rounded-lg border border-teal-100 shadow-lg min-w-[180px] py-1",
        item: "block w-full text-left px-4 py-2 text-sm text-teal-700 hover:bg-teal-50 transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-teal-50"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-teal-800 text-xs text-white rounded-lg shadow-lg whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-teal-800 rotate-45 rounded-sm"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-teal-200",
        track_on: "bg-teal-600",
        thumb: "inline-block h-4 w-4 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-1",
        thumb_on: "translate-x-6",
        label: "text-sm font-medium text-teal-700",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-3",
        item: "bg-white rounded-xl border border-teal-100 shadow-lg px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-4 border-l-sky-400",
        success: "border-l-4 border-l-emerald-500",
        warning: "border-l-4 border-l-amber-400",
        error: "border-l-4 border-l-red-500",
        title: "text-sm font-semibold text-teal-900",
        message: "text-sm text-teal-500 mt-0.5",
        dismiss: "absolute top-2 right-2 text-teal-400 hover:text-teal-600 transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-teal-500 rounded-bl-xl transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1.5",
        label: "block text-sm font-medium text-teal-700",
        hint: "text-xs text-teal-400 mt-1",
        error: "text-xs text-red-600 mt-1",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-teal-200 rounded-lg px-3 py-2 text-sm text-teal-900 placeholder-teal-300 focus:border-teal-500 focus:ring-1 focus:ring-teal-500 focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-teal-50"
      },
      textarea: {
        base: "w-full bg-white border border-teal-200 rounded-lg px-3 py-2 text-sm text-teal-900 placeholder-teal-300 focus:border-teal-500 focus:ring-1 focus:ring-teal-500 focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-teal-50"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-teal-200 rounded-lg px-3 py-2 pr-8 text-sm text-teal-900 focus:border-teal-500 focus:ring-1 focus:ring-teal-500 focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-teal-400",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 rounded border-teal-300 text-teal-600 focus:ring-teal-500 cursor-pointer",
        label: "text-sm text-teal-700",
        hint: "text-xs text-teal-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-3",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-teal-300 text-teal-600 focus:ring-teal-500 cursor-pointer",
        label: "text-sm text-teal-700",
        hint: "text-xs text-teal-400",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "bg-white rounded-xl border border-teal-100 shadow-sm divide-y divide-teal-50",
        item: "px-5 py-4",
        item_hover: "hover:bg-teal-50/50 transition-colors",
        label: "text-xs font-medium text-teal-500",
        value: "text-sm text-teal-900",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-px bg-teal-100"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-teal-200 rounded-lg pl-9 pr-3 py-2 text-sm text-teal-900 placeholder-teal-300 focus:border-teal-500 focus:ring-1 focus:ring-teal-500 focus:outline-none transition-colors",
        search_icon: "absolute left-3 top-1/2 -translate-y-1/2 text-teal-400",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1.5 text-sm font-medium text-teal-500 hover:text-teal-700 hover:bg-teal-50 rounded-lg transition-colors cursor-pointer",
        item_active: "px-3 py-1.5 text-sm font-medium text-white bg-teal-600 rounded-lg",
        item_disabled: "px-3 py-1.5 text-sm text-teal-300 cursor-not-allowed",
        ellipsis: "px-2 text-sm text-teal-400",
        info: "text-sm text-teal-500"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-sm font-medium text-teal-400 hover:text-teal-600 transition-colors",
        item_active: "text-sm font-semibold text-teal-900",
        separator: "text-teal-300 text-xs"
      },
      progress: {
        track: "w-full bg-teal-100 rounded-full overflow-hidden",
        bar: "h-full bg-teal-600 rounded-full transition-all duration-300",
        bar_success: "h-full bg-emerald-500 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-amber-500 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-500 rounded-full transition-all duration-300",
        bar_info: "h-full bg-sky-500 rounded-full transition-all duration-300",
        label: "text-xs text-teal-500 mt-1",
        sm: "h-1.5",
        md: "h-2.5",
        lg: "h-4"
      },
      skeleton: {
        base: "animate-pulse bg-teal-100 rounded-lg",
        text: "h-3 rounded-md",
        heading: "h-5 w-48 rounded-md",
        avatar: "w-9 h-9 rounded-full",
        button: "h-9 w-24 rounded-lg",
        image: "h-32 w-full rounded-xl"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-xs font-medium text-teal-500",
        value: "text-sm text-teal-900",
        divider: "w-px h-3 bg-teal-200 hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#f0fdfa",
        toolbar_border: "#ccfbf1",
        btn_color: "#0d9488",
        btn_hover_bg: "#ccfbf1",
        btn_active_bg: "#99f6e4",
        btn_active_color: "#134e4a",
        editor_bg: "#ffffff",
        editor_border: "#99f6e4",
        editor_focus: "#14b8a6",
        editor_text: "#134e4a",
        content_blockquote: "#99f6e4",
        content_code_bg: "#f0fdfa"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-gray-200 rounded-lg px-6 py-8 cursor-pointer hover:border-teal-300 hover:bg-teal-50/30 transition-colors",
        dropzone_active: "border-teal-400 bg-teal-50/50",
        icon: "text-teal-400 mb-3",
        text: "text-[13px] text-gray-600",
        hint: "text-[11px] text-gray-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-gray-200 rounded-lg overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 rounded-full bg-white/90 shadow-sm text-gray-400 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-teal-50 border-b border-teal-100 text-teal-800",
        warning: "bg-amber-50 border-b border-amber-100 text-amber-800",
        maintenance: "bg-gray-100 border-b border-gray-200 text-gray-700",
        title: "text-[13px] font-semibold",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "text-[11px] font-medium"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#111827",
        sidebar_bg: "#030712",
        sidebar_border: "#1f2937",
        sidebar_text: "#9ca3af",
        sidebar_text_active: "#f9fafb",
        topbar_bg: "#111827",
        topbar_border: "#1f2937",
        topbar_text: "#f9fafb",
        content_bg: "#111827",
        content_text: "#e5e7eb",
        card_bg: "#1f2937",
        card_border: "#374151",
        table_border: "#1f2937",
        table_text: "#9ca3af",
        input_bg: "#1f2937",
        input_border: "#374151",
        input_text: "#e5e7eb"
      }
    },

    # ─── LEDGER ───────────────────────────────────────────────
    # Accounting, finance, consultancy. Warm cream base, forest
    # green accent, conservative structure, tabular emphasis,
    # understated confidence. Feels like a well-kept balance sheet.
    ledger: {
      layout: {
        body: "bg-[#f5f3ee] antialiased",
        sidebar: "w-56 bg-[#2d3a2e] border-r border-[#3d4a3e] flex flex-col",
        brand: "text-sm font-bold tracking-wide text-[#a8c5a0]",
        brand_wrapper: "px-5 pt-5 pb-4",
        nav: "flex-1 px-3 py-4 space-y-1 overflow-y-auto",
        nav_group: "space-y-0.5",
        divider: "w-full h-px bg-[#3d4a3e]",
        sidebar_divider: "w-full h-px bg-[#3d4a3e]",
        overlay: "bg-[#2d3a2e]/60 backdrop-blur-sm",
        topbar: "h-14 flex items-center justify-between px-6 lg:px-8 bg-white border-b border-[#e0dcd4]",
        topbar_title: "text-sm font-semibold text-[#2d3a2e]",
        topbar_date: "hidden sm:block text-sm text-[#8a8475] tabular-nums",
        content: "flex-1 overflow-y-auto p-6 lg:p-8",
        user_wrapper: "px-4 py-4 border-t border-[#3d4a3e]",
        user_email: "text-xs text-[#8a9b85] truncate",
        user_avatar: "w-8 h-8 rounded bg-[#3d4a3e] flex items-center justify-center text-xs font-medium text-[#a8c5a0]",
        menu_icon: "lg:hidden p-1.5 text-[#8a9b85] hover:text-white rounded",
        signout: "flex items-center gap-1.5 text-xs text-[#8a9b85] hover:text-[#a8c5a0] transition-colors mt-1"
      },
      stat: {
        group: "grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8",
        wrapper: "bg-white rounded-md border border-[#e0dcd4] px-5 py-4",
        label: "text-xs font-medium uppercase tracking-wide text-[#8a8475] mb-1",
        value: "text-2xl font-bold text-[#2d3a2e] tabular-nums font-mono",
        divider: "w-full h-px bg-[#e0dcd4] mb-8"
      },
      step: {
        group: "space-y-4",
        wrapper: "flex items-start gap-4 bg-white rounded-md border border-[#e0dcd4] p-4",
        number: "flex-shrink-0 w-7 h-7 rounded bg-[#2d3a2e] text-[#a8c5a0] text-xs font-bold flex items-center justify-center",
        title: "text-sm font-semibold text-[#2d3a2e]",
        description: "text-sm text-[#8a8475] mt-0.5"
      },
      section_label: {
        text: "text-xs font-semibold uppercase tracking-wide text-[#8a8475] mb-4"
      },
      page_header: {
        wrapper: "mb-8",
        heading: "text-2xl font-bold text-[#2d3a2e]",
        subtitle: "mt-1 text-sm text-[#8a8475]"
      },
      empty_state: {
        message: "text-sm text-[#8a8475] pt-4",
        subtext: "text-sm text-[#a09b8e] mt-1"
      },
      button: {
        primary: "px-4 py-2 text-sm font-medium bg-[#2d3a2e] text-white rounded-md hover:bg-[#3d4a3e] transition-colors",
        secondary: "px-4 py-2 text-sm font-medium border border-[#d5d0c8] text-[#5a5548] rounded-md hover:bg-[#eae7e0] transition-colors",
        danger: "px-4 py-2 text-sm font-medium bg-red-700 text-white rounded-md hover:bg-red-800 transition-colors",
        ghost: "px-4 py-2 text-sm font-medium text-[#8a8475] hover:text-[#2d3a2e] hover:bg-[#eae7e0] rounded-md transition-colors",
        disabled: "px-4 py-2 text-sm font-medium bg-[#eae7e0] text-[#b5b0a5] rounded-md cursor-not-allowed",
        sm: "px-3 py-1.5 text-xs rounded",
        md: "px-4 py-2 text-sm rounded-md",
        lg: "px-6 py-2.5 text-base rounded-md"
      },
      flash: {
        notice: "mb-6 px-4 py-3 rounded-md bg-emerald-50 border border-emerald-200 text-sm text-emerald-800",
        alert: "mb-6 px-4 py-3 rounded-md bg-red-50 border border-red-200 text-sm text-red-800"
      },
      nav_link: {
        active: "flex items-center px-3 py-2 text-sm font-medium rounded-md bg-white/10 text-[#a8c5a0] border-l-2 border-[#a8c5a0]",
        inactive: "flex items-center px-3 py-2 text-sm font-medium rounded-md text-[#8a9b85] hover:text-[#a8c5a0] hover:bg-white/5 border-l-2 border-transparent transition-colors",
        coming_soon: "flex items-center px-3 py-2 text-sm text-[#5a6b5c] cursor-default rounded-md",
        badge: "ml-auto text-[10px] font-medium uppercase text-[#6a7b6c]",
        section: "px-3 mb-1 text-[10px] font-semibold uppercase tracking-widest text-[#6a7b6c]"
      },
      separator: {
        horizontal: "w-full border-t border-[#e0dcd4]",
        vertical: "h-full border-l border-[#e0dcd4]",
        sm: "my-2",
        md: "my-4",
        lg: "my-8"
      },
      badge: {
        wrapper: "inline-flex items-center font-medium rounded-md",
        default: "bg-[#eae7e0] text-[#5a5548]",
        success: "bg-emerald-50 text-emerald-700",
        warning: "bg-amber-50 text-amber-700",
        error: "bg-red-50 text-red-700",
        info: "bg-sky-50 text-sky-700",
        outline: "bg-transparent text-[#8a8475] border border-[#d5d0c8] rounded-md",
        sm: "px-2 py-0.5 text-xs",
        md: "px-2.5 py-0.5 text-xs"
      },
      alert: {
        wrapper: "flex gap-3 px-4 py-3 rounded-md border",
        info: "border-sky-200 bg-sky-50 text-sky-800",
        success: "border-emerald-200 bg-emerald-50 text-emerald-800",
        warning: "border-amber-200 bg-amber-50 text-amber-800",
        error: "border-red-200 bg-red-50 text-red-800",
        icon: "flex-shrink-0 mt-0.5",
        title: "text-sm font-semibold mb-0.5",
        message: "text-sm opacity-80",
        dismiss: "ml-auto flex-shrink-0 opacity-50 hover:opacity-80 transition-opacity cursor-pointer"
      },
      card: {
        wrapper: "bg-white rounded-md border border-[#e0dcd4]",
        header: "px-5 py-4 border-b border-[#eae7e0]",
        title: "text-base font-semibold text-[#2d3a2e]",
        description: "text-sm text-[#8a8475] mt-0.5",
        body: "px-5 py-4",
        footer: "px-5 py-3 border-t border-[#eae7e0] bg-[#faf8f5] rounded-b-md flex items-center gap-3"
      },
      avatar: {
        wrapper: "inline-flex items-center justify-center rounded-md bg-[#2d3a2e] text-[#a8c5a0] font-semibold",
        sm: "w-7 h-7 text-xs",
        md: "w-9 h-9 text-sm",
        lg: "w-12 h-12 text-base",
        image: "rounded-md object-cover"
      },
      table: {
        wrapper: "w-full",
        head: "text-left bg-[#faf8f5] border-b border-[#e0dcd4]",
        th: "text-xs font-semibold uppercase tracking-wide text-[#8a8475] px-4 py-3",
        body: "",
        tr: "border-b border-[#eae7e0]",
        tr_hover: "hover:bg-[#faf8f5] transition-colors",
        tr_striped: "even:bg-[#faf8f5]",
        td: "px-4 py-3 text-sm text-[#4a4540] tabular-nums"
      },
      description_list: {
        wrapper: "",
        item: "py-3 border-b border-[#eae7e0]",
        item_horizontal: "py-3 border-b border-[#eae7e0] sm:flex sm:items-baseline sm:gap-8",
        term: "text-xs font-semibold uppercase tracking-wide text-[#8a8475] mb-0.5",
        term_horizontal: "text-xs font-semibold uppercase tracking-wide text-[#8a8475] sm:w-40 flex-shrink-0",
        detail: "text-sm text-[#4a4540]"
      },
      accordion: {
        wrapper: "rounded-md border border-[#e0dcd4] divide-y divide-[#e0dcd4]",
        item: "",
        trigger: "w-full flex items-center justify-between px-4 py-3 text-sm font-medium text-[#4a4540] hover:bg-[#faf8f5] transition-colors text-left cursor-pointer",
        icon: "text-[#8a8475] transition-transform duration-200",
        content: "px-4 pb-4 text-sm text-[#8a8475]"
      },
      modal: {
        overlay: "fixed inset-0 bg-[#2d3a2e]/50 backdrop-blur-sm z-50 flex items-center justify-center",
        wrapper: "bg-white rounded-md border border-[#e0dcd4] shadow-xl mx-4",
        sm: "max-w-sm w-full",
        md: "max-w-lg w-full",
        lg: "max-w-2xl w-full",
        full: "max-w-5xl w-full",
        header: "px-6 py-4 border-b border-[#e0dcd4]",
        title: "text-lg font-semibold text-[#2d3a2e]",
        body: "px-6 py-5",
        footer: "px-6 py-4 border-t border-[#eae7e0] bg-[#faf8f5] rounded-b-md flex items-center justify-end gap-3",
        close: "text-[#8a8475] hover:text-[#4a4540] transition-colors cursor-pointer"
      },
      tabs: {
        wrapper: "",
        list: "flex border-b border-[#e0dcd4]",
        tab: "px-4 py-2 text-sm font-medium text-[#8a8475] hover:text-[#4a4540] transition-colors cursor-pointer border-b-2 border-transparent -mb-px",
        tab_active: "px-4 py-2 text-sm font-medium text-[#2d3a2e] cursor-pointer border-b-2 border-[#2d3a2e] -mb-px",
        panel: "py-4"
      },
      dropdown: {
        wrapper: "relative inline-block",
        menu: "absolute z-40 mt-1 bg-white rounded-md border border-[#e0dcd4] shadow-lg min-w-[180px] py-1",
        item: "block w-full text-left px-4 py-2 text-sm text-[#4a4540] hover:bg-[#faf8f5] transition-colors cursor-pointer",
        item_danger: "block w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50 transition-colors cursor-pointer",
        divider: "my-1 border-t border-[#eae7e0]"
      },
      tooltip: {
        wrapper: "absolute z-50 px-3 py-1.5 bg-[#2d3a2e] text-xs text-white rounded-md shadow-lg whitespace-nowrap",
        arrow: "absolute w-2 h-2 bg-[#2d3a2e] rotate-45 rounded-sm"
      },
      toggle: {
        track: "relative inline-flex h-6 w-11 items-center rounded-full cursor-pointer transition-colors duration-200",
        track_off: "bg-[#d5d0c8]",
        track_on: "bg-[#2d3a2e]",
        thumb: "inline-block h-4 w-4 rounded-full bg-white transition-transform duration-200 shadow-sm",
        thumb_off: "translate-x-1",
        thumb_on: "translate-x-6",
        label: "text-sm font-medium text-[#4a4540]",
        disabled: "opacity-40 cursor-not-allowed"
      },
      toast: {
        wrapper: "fixed bottom-6 right-6 z-50 flex flex-col gap-3",
        item: "bg-white rounded-md border border-[#e0dcd4] shadow-lg px-4 py-3 min-w-[280px] max-w-sm relative",
        info: "border-l-4 border-l-sky-500",
        success: "border-l-4 border-l-emerald-600",
        warning: "border-l-4 border-l-amber-500",
        error: "border-l-4 border-l-red-600",
        title: "text-sm font-semibold text-[#2d3a2e]",
        message: "text-sm text-[#8a8475] mt-0.5",
        dismiss: "absolute top-2 right-2 text-[#b5b0a5] hover:text-[#4a4540] transition-opacity cursor-pointer",
        progress: "absolute bottom-0 left-0 h-1 bg-[#2d3a2e] rounded-bl-md transition-all"
      },
      form: {
        group: "space-y-5",
        field: "space-y-1.5",
        label: "block text-sm font-medium text-[#5a5548]",
        hint: "text-xs text-[#a09b8e] mt-1",
        error: "text-xs text-red-600 mt-1",
        required: "text-red-500 ml-0.5"
      },
      input: {
        base: "w-full bg-white border border-[#d5d0c8] rounded-md px-3 py-2 text-sm text-[#2d3a2e] placeholder-[#b5b0a5] focus:border-[#2d3a2e] focus:ring-1 focus:ring-[#2d3a2e] focus:outline-none transition-colors",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-[#eae7e0]"
      },
      textarea: {
        base: "w-full bg-white border border-[#d5d0c8] rounded-md px-3 py-2 text-sm text-[#2d3a2e] placeholder-[#b5b0a5] focus:border-[#2d3a2e] focus:ring-1 focus:ring-[#2d3a2e] focus:outline-none transition-colors resize-y",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed bg-[#eae7e0]"
      },
      select: {
        wrapper: "relative",
        base: "w-full bg-white border border-[#d5d0c8] rounded-md px-3 py-2 pr-8 text-sm text-[#2d3a2e] focus:border-[#2d3a2e] focus:ring-1 focus:ring-[#2d3a2e] focus:outline-none appearance-none transition-colors cursor-pointer",
        icon: "pointer-events-none absolute right-3 top-1/2 -translate-y-1/2 text-[#8a8475]",
        error: "border-red-300 focus:border-red-500 focus:ring-red-500",
        disabled: "opacity-40 cursor-not-allowed"
      },
      checkbox: {
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 rounded border-[#d5d0c8] text-[#2d3a2e] focus:ring-[#2d3a2e] cursor-pointer",
        label: "text-sm text-[#4a4540]",
        hint: "text-xs text-[#a09b8e]",
        disabled: "opacity-40 cursor-not-allowed"
      },
      radio: {
        group: "space-y-3",
        group_horizontal: "flex items-center gap-6",
        wrapper: "flex items-start gap-2",
        input: "mt-0.5 h-4 w-4 border-[#d5d0c8] text-[#2d3a2e] focus:ring-[#2d3a2e] cursor-pointer",
        label: "text-sm text-[#4a4540]",
        hint: "text-xs text-[#a09b8e]",
        disabled: "opacity-40 cursor-not-allowed"
      },
      stacked_list: {
        wrapper: "bg-white rounded-md border border-[#e0dcd4] divide-y divide-[#eae7e0]",
        item: "px-5 py-4",
        item_hover: "hover:bg-[#faf8f5] transition-colors",
        label: "text-xs font-medium uppercase tracking-wide text-[#8a8475]",
        value: "text-sm text-[#4a4540]",
        actions: "pt-3 flex items-center gap-2",
        divider: "w-full h-px bg-[#e0dcd4]"
      },
      toolbar: {
        wrapper: "flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 mb-6",
        search_wrapper: "relative flex-1 max-w-sm",
        search_input: "w-full bg-white border border-[#d5d0c8] rounded-md pl-9 pr-3 py-2 text-sm text-[#2d3a2e] placeholder-[#b5b0a5] focus:border-[#2d3a2e] focus:ring-1 focus:ring-[#2d3a2e] focus:outline-none transition-colors",
        search_icon: "absolute left-3 top-1/2 -translate-y-1/2 text-[#8a8475]",
        actions: "flex items-center gap-2",
        filter_group: "flex items-center gap-2"
      },
      pagination: {
        wrapper: "flex items-center justify-between mt-6",
        item: "px-3 py-1.5 text-sm font-medium text-[#8a8475] hover:text-[#2d3a2e] hover:bg-[#eae7e0] rounded-md transition-colors cursor-pointer",
        item_active: "px-3 py-1.5 text-sm font-medium text-white bg-[#2d3a2e] rounded-md",
        item_disabled: "px-3 py-1.5 text-sm text-[#d5d0c8] cursor-not-allowed",
        ellipsis: "px-2 text-sm text-[#b5b0a5]",
        info: "text-sm text-[#8a8475]"
      },
      breadcrumb: {
        wrapper: "flex items-center gap-2 mb-4",
        item: "text-sm font-medium text-[#8a8475] hover:text-[#2d3a2e] transition-colors",
        item_active: "text-sm font-semibold text-[#2d3a2e]",
        separator: "text-[#d5d0c8] text-xs"
      },
      progress: {
        track: "w-full bg-[#e0dcd4] rounded-full overflow-hidden",
        bar: "h-full bg-[#2d3a2e] rounded-full transition-all duration-300",
        bar_success: "h-full bg-emerald-600 rounded-full transition-all duration-300",
        bar_warning: "h-full bg-amber-500 rounded-full transition-all duration-300",
        bar_error: "h-full bg-red-600 rounded-full transition-all duration-300",
        bar_info: "h-full bg-sky-500 rounded-full transition-all duration-300",
        label: "text-xs text-[#8a8475] mt-1",
        sm: "h-1.5",
        md: "h-2.5",
        lg: "h-4"
      },
      skeleton: {
        base: "animate-pulse bg-[#e0dcd4] rounded-md",
        text: "h-3 rounded",
        heading: "h-5 w-48 rounded",
        avatar: "w-9 h-9 rounded-md",
        button: "h-9 w-24 rounded-md",
        image: "h-32 w-full rounded-md"
      },
      key_value: {
        wrapper: "flex flex-wrap items-center gap-x-6 gap-y-2",
        group: "flex items-baseline gap-1.5",
        label: "text-xs font-medium uppercase tracking-wide text-[#8a8475]",
        value: "text-sm text-[#4a4540] tabular-nums",
        divider: "w-px h-3 bg-[#e0dcd4] hidden sm:block"
      },
      rich_text: {
        toolbar_bg: "#faf8f5",
        toolbar_border: "#e0dcd4",
        btn_color: "#8a8475",
        btn_hover_bg: "#f0ece4",
        btn_active_bg: "#e0dcd4",
        btn_active_color: "#4a4540",
        editor_bg: "#fdfcfa",
        editor_border: "#e0dcd4",
        editor_focus: "#8a8475",
        editor_text: "#4a4540",
        content_blockquote: "#e0dcd4",
        content_code_bg: "#f5f2ec"
      },
      image_upload: {
        wrapper: "space-y-3",
        dropzone: "flex flex-col items-center justify-center border border-dashed border-amber-300/50 rounded px-6 py-8 cursor-pointer hover:border-amber-400 hover:bg-amber-50/30 transition-colors",
        dropzone_active: "border-amber-500 bg-amber-50/50",
        icon: "text-amber-400 mb-3",
        text: "text-[13px] text-stone-600",
        hint: "text-[11px] text-stone-400 mt-1",
        preview_grid: "grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3",
        preview_item: "relative group aspect-square border border-amber-200/50 rounded overflow-hidden",
        preview_image: "w-full h-full object-cover",
        preview_remove: "absolute top-1 right-1 p-0.5 rounded bg-white/90 text-stone-400 hover:text-red-500 opacity-0 group-hover:opacity-100 transition-opacity cursor-pointer",
        error: "border-red-300",
        disabled: "opacity-40 cursor-not-allowed pointer-events-none"
      },
      impersonation: {
        banner: "flex items-center justify-between gap-3 px-8 py-2 lg:px-12 bg-violet-50 border-b border-violet-100",
        text: "text-[12px] italic text-violet-700",
        stop_button: "text-[12px] italic text-violet-500 hover:text-violet-800 underline underline-offset-2 transition-colors"
      },
      announcement: {
        banner: "flex items-start gap-3 px-8 py-3 lg:px-12",
        info: "bg-sky-50 border-b border-sky-100 text-sky-800",
        warning: "bg-amber-50 border-b border-amber-100 text-amber-800",
        maintenance: "bg-stone-100 border-b border-stone-200 text-stone-600",
        title: "font-serif text-[13px] font-medium",
        body: "text-[12px] opacity-80 mt-0.5",
        dismiss: "ml-auto flex-shrink-0 opacity-40 hover:opacity-70 transition-opacity cursor-pointer",
        table_kind: "font-serif text-[11px] italic"
      },
      dark_mode: {
        enabled: "true",
        body_bg: "#1a1814",
        sidebar_bg: "#0f0e0b",
        sidebar_border: "#2a2720",
        sidebar_text: "#8a8475",
        sidebar_text_active: "#f5f2ec",
        topbar_bg: "#1a1814",
        topbar_border: "#2a2720",
        topbar_text: "#f5f2ec",
        content_bg: "#1a1814",
        content_text: "#d4cfc5",
        card_bg: "#2a2720",
        card_border: "#3d3930",
        table_border: "#2a2720",
        table_text: "#8a8475",
        input_bg: "#2a2720",
        input_border: "#3d3930",
        input_text: "#d4cfc5"
      }
    }
  }.freeze

  def self.ts(component, element)
    THEMES.dig(CURRENT, component, element)
  end
end
