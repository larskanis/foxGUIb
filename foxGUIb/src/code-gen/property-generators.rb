# Copyright (c) 2004-2006 by Henon (meinrad dot recheis at gmail dot com)
require "yaml"

module StringPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      val = @wdg.send(method.chop)

      i18n_key = "#{treeitem}_#{method.delete("=")}".inspect
      val = "I18n.t(#{i18n_key}, scope: #{i18n_scope.inspect}, default: #{val.inspect})"

      return "w_#{treeitem}.#{method_s}#{val}"
    end
  end
end

module IntPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module BoolPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module ConstPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end

module ColorPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}Fox::FXRGBA(#{serialize @wdg.send(method.chop)})"
    end
  end
end

module FontPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}FX::Font.new.from_s(\"#{serialize(@wdg.send(method.chop))}\").to_FXFont"
    end
  end
end

module IconPropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}\"#{serialize @wdg.send(method.chop)}\""
    end
  end
end

module RangePropCodeGen
  def to lang, treeitem, i18n_scope
    if lang == "ruby"
      "w_#{treeitem}.#{method_s}#{serialize @wdg.send(method.chop)}"
    end
  end
end
