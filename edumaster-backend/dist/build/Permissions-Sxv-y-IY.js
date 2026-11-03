import{aP as ce,gx as Ve,d6 as Ge,gy as We,gz as Ke,fl as $e,gA as Xe,gB as qe,gC as ze,gD as Ye,gE as Je,c7 as Ze,fi as ve,cS as Qe,gF as ge,gG as N,f6 as J,gH as Ue,gI as es,gJ as Te,l as v,T as y,j as n,Z as S,a as P,bG as L,I as E,r as A,eP as k,gs as ss,dk as ts,z as ie,cs as ns,co as I,cx as os,cy as is,b8 as rs,gK as as,cb as Me,gL as de,gM as ls,dt as cs,eV as z,U as me,c$ as H,cN as D}from"./strapi-D8l975u2.js";import{c as oe}from"./cloneDeep-DG95dr2s.js";import{_ as ds}from"./_baseEach-DFXgUXTJ.js";var ps=Object.prototype,us=ps.hasOwnProperty;function hs(e,s){return e!=null&&us.call(e,s)}var gs=hs,ms=gs,fs=Ve;function xs(e,s){return e!=null&&fs(e,s,ms)}var Cs=xs;const U=ce(Cs),[bs,js]=Ge("PermissionsDataManager"),q=()=>js("usePermissionsDataManager");var ys=Je,As=ze,ks=Ze(),Os=$e(),Ss=Ye,$s=ve,vs=We,Ts=qe,Ms=Xe,ws=Ke;function Ps(e,s,o){var t=$s(e),i=t||vs(e)||ws(e);if(s=Os(s,4),o==null){var a=e&&e.constructor;i?o=t?new a:[]:Ms(e)?o=Ts(a)?As(Ss(e)):{}:o={}}return(i?ys:ks)(e,function(l,r,c){return s(o,l,r,c)}),o}var _s=Ps;const Es=ce(_s);function fe(e,s){function o(t,i){return Es(t,(a,l,r)=>(Qe(l,i[r])||(a[r]=ge(l)&&ge(i[r])?o(l,i[r]):l),a))}return o(e,s)}const we=e=>Array.isArray(e)?e.reduce((s,o)=>(Array.isArray(o)?s.push(...we(o)):s.push(o),s),[]):[],V=e=>N(e)?we(Object.values(e).map(s=>N(s)?V(s):s)):[],Pe=(e,s,o)=>e.find(t=>t.action===s&&t.subject===o),Ls=e=>{const s=xe(e.plugins),o=xe(e.settings),t=Ce(e.collectionTypes),i=Ce(e.singleTypes);return[...s,...o,...t,...i]},xe=e=>Object.values(e).reduce((s,o)=>{const t=Object.values(o).reduce((i,a)=>{const l=Object.entries(a).reduce((r,[c,{conditions:d,properties:{enabled:p}}])=>(p&&r.push({action:c,subject:null,conditions:re(d),properties:{}}),r),[]);return[...i,...l]},[]);return[...s,...t]},[]),Ce=e=>Object.entries(e).reduce((o,t)=>{const[i,a]=t,l=Object.entries(a).reduce((r,c)=>{const[d,p]=c;if(!V(p).some(h=>h))return r;if(!p?.properties?.enabled){const h=Object.entries(p.properties).reduce((C,f)=>{const[u,m]=f;return C.properties[u]=_e(m),C},{action:d,subject:i,conditions:re(p.conditions),properties:{}});return[...r,h]}return p.properties.enabled&&r.push({action:d,subject:i,properties:{},conditions:re(p.conditions)}),r},[]);return[...o,...l]},[]),_e=(e,s="")=>Object.entries(e).reduce((o,t)=>{const[i,a]=t;return N(a)?[...o,..._e(a,`${s}${i}.`)]:(a&&!N(a)&&o.push(`${s}${i}`),o)},[]),re=e=>Object.entries(e).filter(([,s])=>s).map(([s])=>s),Ee=(e,s=[])=>e.reduce((o,t)=>(o[t.id]=s.indexOf(t.id)!==-1,o),{}),be=(e,s,o=[])=>e.reduce((t,{categoryId:i,childrenForm:a})=>{const l=a.reduce((r,c)=>(r[c.subCategoryId]=c.actions.reduce((d,p)=>{const g=Pe(o,p.action,null);return d[p.action]={properties:{enabled:g!==void 0},conditions:Ee(s,g?.conditions??[])},d},{}),r),{});return t[i]=l,t},{}),Ds=(e,s,o)=>{const t=({children:i=[]},a,l="")=>i.reduce((r,c)=>{if(c.children)return{...r,[c.value]:t(c,a,`${l}${c.value}.`)};const d=a.indexOf(`${l}${c.value}`)!==-1;return r[c.value]=d,r},{});return e.reduce((i,a)=>{const l=s.properties.find(({value:r})=>r===a);if(l){const r=o?.properties[l.value]??[],c=t(l,r);i.properties[a]=c}return i},{properties:{}})},je=({subjects:e,actions:s=[]},o,t=[])=>s.reduce((i,a)=>{const l=a.subjects.reduce((c,d)=>{const p=e.find(({uid:g})=>g===d)||null;return p&&(c[d]=p),c},{});if(J(l))return i;const r=Object.keys(l).reduce((c,d)=>{const{actionId:p,applyToProperties:g}=a,f=l[d].properties.map(({value:x})=>x).every(x=>(g||[]).indexOf(x)===-1),u=Pe(t,p,d),m=Ee(o,u?.conditions??[]);if(c[d]||(c[d]={}),J(g)||f)return c[d][p]={properties:{enabled:u!==void 0},conditions:m},c;const b=Ds(g,l[d],u);return c[d][p]={...b,conditions:m},c},{});return Ue(i,r)},{});function Rs(e,s,o,t){for(var i=-1,a=e==null?0:e.length;++i<a;){var l=e[i];s(t,l,o(l),e)}return t}var Is=Rs,Ns=ds;function Fs(e,s,o,t){return Ns(e,function(i,a,l){s(t,i,o(i),l)}),t}var Bs=Fs,Hs=Is,Vs=Bs,Gs=$e(),Ws=ve;function Ks(e,s){return function(o,t){var i=Ws(o)?Hs:Vs,a=s?s():{};return i(o,e,Gs(t,2),a)}}var Xs=Ks,qs=es,zs=Xs,Ys=Object.prototype,Js=Ys.hasOwnProperty,Zs=zs(function(e,s,o){Js.call(e,o)?e[o].push(s):qs(e,o,[s])}),Qs=Zs;const ae=ce(Qs),ye=(e,s)=>Object.entries(ae(e,s)).map(([o,t])=>({category:o,categoryId:o.split(" ").join("-"),childrenForm:Object.entries(ae(t,"subCategory")).map(([i,a])=>({subCategoryName:i,subCategoryId:i.split(" ").join("-"),actions:a}))})),Q=e=>Object.keys(e).reduce((s,o)=>{const t=e[o];if(N(t)&&!U(t,"conditions"))return{...s,[o]:Q(t)};if(N(t)&&U(t,"conditions")&&!V(Te(t,"conditions")).some(a=>a)){const a=Object.keys(t.conditions).reduce((l,r)=>(l[r]=!1,l),{});return{...s,[o]:{...t,conditions:a}}}return s[o]=t,s},{}),Y=(e,s,o=!1)=>Object.keys(e).reduce((t,i)=>{const a=e[i];return i==="conditions"&&!o?(t[i]=a,t):N(a)?{...t,[i]:Y(a,s,i==="fields")}:(t[i]=s,t)},{}),R="12rem",pe="20rem",se="5.3rem",ue=e=>e?Object.entries(e).reduce((s,[o,t])=>(o!=="conditions"&&(s[o]=t),s),{}):null,G=e=>{const s=ue(e),o=V(s);if(!o.length)return{hasAllActionsSelected:!1,hasSomeActionsSelected:!1};const t=o.every(a=>a),i=o.some(a=>a)&&!t;return{hasAllActionsSelected:t,hasSomeActionsSelected:i}},Le=v(y)`
  padding-right: ${({theme:e})=>e.spaces[2]};
  overflow: hidden;
  flex: 1;
  ${({$isCollapsable:e})=>e&&"cursor: pointer;"}
`,he=v.div`
  width: ${R};
`,De=()=>n.jsx(S,{color:"danger700",paddingLeft:1,children:"*"}),Re=({checkboxName:e="",children:s,isActive:o=!1,isCollapsable:t=!1,isFormDisabled:i=!1,label:a,onChange:l,onClick:r,someChecked:c=!1,value:d})=>{const{formatMessage:p}=P(),g={title:a,alignItems:"center",$isCollapsable:t};return t&&Object.assign(g,{onClick:r,"aria-expanded":o,onKeyDown({key:h}){(h==="Enter"||h===" ")&&r()},tabIndex:0,role:"button"}),n.jsxs(y,{alignItems:"center",paddingLeft:6,width:pe,shrink:0,children:[n.jsx(S,{paddingRight:2,children:n.jsx(L,{name:e,"aria-label":p({id:"Settings.permissions.select-all-by-permission",defaultMessage:"Select all {label} permissions"},{label:a}),disabled:i,onCheckedChange:h=>l({target:{name:e,value:!!h}}),checked:c?"indeterminate":d})}),n.jsxs(Le,{...g,children:[n.jsx(E,{ellipsis:!0,children:a}),s]})]})},Us=({availableActions:e=[],childrenForm:s=[],isFormDisabled:o,label:t,pathToData:i,propertyName:a})=>{const l=A.useMemo(()=>e.map(r=>{const c=Array.isArray(r.applyToProperties)&&r.applyToProperties.indexOf(a)!==-1&&r.isDisplayed;return{label:r.label,actionId:r.actionId,isActionRelatedToCurrentProperty:c}}),[e,a]);return n.jsxs(y,{display:"inline-flex",direction:"column",alignItems:"stretch",minWidth:0,children:[n.jsx(ct,{label:t,headers:l}),n.jsx(S,{children:s.map(({children:r,label:c,value:d,required:p},g)=>n.jsx(et,{childrenForm:r,label:c,isFormDisabled:o,name:d,required:p,propertyActions:l,pathToData:i,propertyName:a,isOdd:g%2===0},d))})]})},et=({childrenForm:e=[],label:s,isFormDisabled:o=!1,name:t,required:i=!1,pathToData:a,propertyActions:l,propertyName:r,isOdd:c=!1})=>{const{formatMessage:d}=P(),[p,g]=A.useState(null),{modifiedData:h,onChangeCollectionTypeLeftActionRowCheckbox:C,onChangeParentCheckbox:f,onChangeSimpleCheckbox:u}=q(),m=p===t,b=A.useMemo(()=>Array.isArray(e)?e:[],[e]),x=b.length>0,j=A.useCallback(()=>{x&&g(O=>O===t?null:t)},[x,t]),$=({target:{value:O}})=>{C(a,r,t,O)},{hasAllActionsSelected:M,hasSomeActionsSelected:w}=A.useMemo(()=>st(l,h,a,r,t),[l,h,a,r,t]);return n.jsxs(n.Fragment,{children:[n.jsx(tt,{alignItems:"center",$isCollapsable:x,$isActive:m,background:c?"neutral100":"neutral0",children:n.jsxs(y,{children:[n.jsxs(Re,{onChange:$,onClick:j,isCollapsable:x,isFormDisabled:o,label:s,someChecked:w,value:M,isActive:m,children:[i&&n.jsx(De,{}),n.jsx(Z,{$isActive:m})]}),n.jsx(y,{children:l.map(({label:O,isActionRelatedToCurrentProperty:_,actionId:W})=>{if(!_)return n.jsx(he,{},O);const T=[...a.split(".."),W,"properties",r,t];if(!x){const B=k(h,T,!1);return n.jsx(y,{width:R,position:"relative",justifyContent:"center",alignItems:"center",children:n.jsx(L,{disabled:o,name:T.join(".."),"aria-label":d({id:"Settings.permissions.select-by-permission",defaultMessage:"Select {label} permission"},{label:`${t} ${O}`}),onCheckedChange:He=>{u({target:{name:T.join(".."),value:!!He}})},checked:B})},W)}const K=k(h,T,{}),{hasAllActionsSelected:F,hasSomeActionsSelected:ne}=G(K);return n.jsx(y,{width:R,position:"relative",justifyContent:"center",alignItems:"center",children:n.jsx(L,{disabled:o,name:T.join(".."),onCheckedChange:B=>{f({target:{name:T.join(".."),value:!!B}})},"aria-label":d({id:"Settings.permissions.select-by-permission",defaultMessage:"Select {label} permission"},{label:`${t} ${O}`}),checked:ne?"indeterminate":F})},O)})})]})}),m&&n.jsx(Ie,{childrenForm:b,isFormDisabled:o,parentName:t,pathToDataFromActionRow:a,propertyName:r,propertyActions:l,recursiveLevel:0})]})},st=(e,s,o,t,i)=>{const l=e.reduce((r,c)=>(c.isActionRelatedToCurrentProperty&&r.push(c.actionId),r),[]).reduce((r,c)=>{const d=k(s,[...o.split(".."),c,"properties",t,i],!1);return r[c]=d,r},{});return G(l)},tt=v(y)`
  height: ${se};
  flex: 1;

  &:hover {
    ${({$isCollapsable:e,theme:s})=>e&&ee(s)}
  }

  ${({$isCollapsable:e})=>e&&`
      ${Z} {
        display: flex;
      }
  `}
  ${({$isActive:e,theme:s})=>e&&ee(s)};
`,Z=v(ts)`
  display: none;

  svg {
    width: 1.4rem;
  }

  path {
    fill: ${({theme:e})=>e.colors.neutral200};
  }

  transform: rotate(${({$isActive:e})=>e?"180":"0"}deg);
  margin-left: ${({theme:e})=>e.spaces[2]};
`,Ie=({childrenForm:e=[],isFormDisabled:s,recursiveLevel:o,pathToDataFromActionRow:t,propertyActions:i,parentName:a,propertyName:l})=>{const{formatMessage:r}=P(),{modifiedData:c,onChangeParentCheckbox:d,onChangeSimpleCheckbox:p}=q(),[g,h]=A.useState(null),C=u=>{h(m=>m===u?null:u)},f=A.useMemo(()=>g?e.find(({value:u})=>u===g):null,[g,e]);return n.jsxs(S,{paddingLeft:"3.2rem",children:[n.jsx(rt,{}),e.map(({label:u,value:m,required:b,children:x},j)=>{const $=j+1<e.length,M=Array.isArray(x),w=g===m;return n.jsxs(nt,{$isVisible:$,children:[n.jsxs(y,{height:se,children:[n.jsx(at,{children:n.jsx(lt,{width:"20",height:"23",viewBox:"0 0 20 23",fill:"none",xmlns:"http://www.w3.org/2000/svg",$color:"primary200",children:n.jsx("path",{fillRule:"evenodd",clipRule:"evenodd",d:"M7.02477 14.7513C8.65865 17.0594 11.6046 18.6059 17.5596 18.8856C18.6836 18.9384 19.5976 19.8435 19.5976 20.9688V20.9688C19.5976 22.0941 18.6841 23.0125 17.5599 22.9643C10.9409 22.6805 6.454 20.9387 3.75496 17.1258C0.937988 13.1464 0.486328 7.39309 0.486328 0.593262H4.50974C4.50974 7.54693 5.06394 11.9813 7.02477 14.7513Z",fill:"#D9D8FF"})})}),n.jsxs(y,{style:{flex:1},children:[n.jsx(ot,{$level:o,$isActive:w,$isCollapsable:M,children:n.jsxs(Le,{alignItems:"center",$isCollapsable:M,...M&&{onClick:()=>C(m),"aria-expanded":w,onKeyDown:({key:O})=>(O==="Enter"||O===" ")&&C(m),tabIndex:0,role:"button"},title:u,children:[n.jsx(it,{ellipsis:!0,children:u}),b&&n.jsx(De,{}),n.jsx(Z,{$isActive:w})]})}),n.jsx(y,{style:{flex:1},children:i.map(({actionId:O,label:_,isActionRelatedToCurrentProperty:W})=>{if(!W)return n.jsx(he,{},O);const T=[...t.split(".."),O,"properties",l,...a.split(".."),m],K=k(c,T,!1);if(!x)return n.jsx(y,{position:"relative",width:R,justifyContent:"center",alignItems:"center",children:n.jsx(L,{disabled:s,name:T.join(".."),"aria-label":r({id:"Settings.permissions.select-by-permission",defaultMessage:"Select {label} permission"},{label:`${a} ${u} ${_}`}),onCheckedChange:B=>{p({target:{name:T.join(".."),value:!!B}})},checked:K})},_);const{hasAllActionsSelected:F,hasSomeActionsSelected:ne}=G(K);return n.jsx(y,{position:"relative",width:R,justifyContent:"center",alignItems:"center",children:n.jsx(L,{disabled:s,name:T.join(".."),"aria-label":r({id:"Settings.permissions.select-by-permission",defaultMessage:"Select {label} permission"},{label:`${a} ${u} ${_}`}),onCheckedChange:B=>{d({target:{name:T.join(".."),value:!!B}})},checked:ne?"indeterminate":F},_)},_)})})]})]}),f&&w&&n.jsx(S,{paddingBottom:2,children:n.jsx(Ie,{isFormDisabled:s,parentName:`${a}..${m}`,pathToDataFromActionRow:t,propertyActions:i,propertyName:l,recursiveLevel:o+1,childrenForm:f.children})})]},m)})]})},nt=v(S)`
  border-left: ${({$isVisible:e,theme:s})=>e?`4px solid ${s.colors.primary200}`:"4px solid transparent"};
`,ot=v(y)`
  padding-left: ${({theme:e})=>e.spaces[4]};
  width: ${({$level:e})=>145-e*36}px;

  &:hover {
    ${({$isCollapsable:e,theme:s})=>e&&ee(s)}
  }

  ${({$isCollapsable:e})=>e&&`
      ${Z} {
        display: flex;
      }
  `}
  ${({$isActive:e,theme:s})=>e&&ee(s)};
`,it=v(E)``,rt=v.div`
  padding-top: ${({theme:e})=>e.spaces[2]};
  margin-top: ${({theme:e})=>e.spaces[2]};
  width: 0.4rem;
  background-color: ${({theme:e})=>e.colors.primary200};
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
`,at=v(S)`
  transform: translate(-4px, -12px);

  &:before {
    content: '';
    width: 0.4rem;
    height: 1.2rem;
    background: ${({theme:e})=>e.colors.primary200};
    display: block;
  }
`,lt=v.svg`
  position: relative;
  flex-shrink: 0;
  transform: translate(-0.5px, -1px);

  * {
    fill: ${({theme:e,$color:s})=>e.colors[s]};
  }
`,ct=({headers:e=[],label:s})=>{const{formatMessage:o}=P();return n.jsxs(y,{children:[n.jsx(y,{width:pe,height:se,shrink:0,alignItems:"center",paddingLeft:6,children:n.jsx(E,{variant:"sigma",textColor:"neutral500",children:o({id:"Settings.roles.form.permission.property-label",defaultMessage:"{label} permissions"},{label:s})})}),e.map(t=>t.isActionRelatedToCurrentProperty?n.jsx(y,{width:R,shrink:0,justifyContent:"center",children:n.jsx(E,{variant:"sigma",textColor:"neutral500",children:o({id:`Settings.roles.form.permissions.${t.label.toLowerCase()}`,defaultMessage:t.label})})},t.label):n.jsx(y,{width:R,shrink:0},t.label))]})},ee=e=>ss`
  color: ${e.colors.primary600};
  font-weight: ${e.fontWeights.bold};

  ${Z} {
    path {
      fill: ${e.colors.primary600};
    }
  }
`,dt=A.forwardRef(({onClick:e,className:s,hasConditions:o=!1,variant:t="tertiary"},i)=>{const{formatMessage:a}=P();return n.jsx(pt,{$hasConditions:o,className:s,children:n.jsx(ie,{variant:t,startIcon:n.jsx(ns,{}),onClick:e,ref:i,type:"button",children:a({id:"global.settings",defaultMessage:"Settings"})})})}),pt=v(S)`
  ${({$hasConditions:e,theme:s})=>e&&`
    &:before {
      content: '';
      position: absolute;
      top: -3px;
      left: -10px;
      width: 6px;
      height: 6px;
      border-radius: 2rem;
      background: ${s.colors.primary600};
    }
  `}
`,te=v(dt)``,Ne=({actions:e=[],headerBreadCrumbs:s=[],isFormDisabled:o,onClose:t})=>{const{formatMessage:i}=P(),{availableConditions:a,modifiedData:l,onChangeConditions:r}=q(),c=A.useMemo(()=>Object.entries(ae(a,"category")),[a]),d=e.filter(({isDisplayed:u,hasSomeActionsSelected:m,hasAllActionsSelected:b})=>u&&!!(m||b)),[p,g]=A.useState(Ae(d,l,c)),h=(u,m)=>{g(Me(b=>{b[u]||(b[u]={}),b[u].default||(b[u].default={}),b[u].default=m}))},C=()=>{const u=Object.entries(p).reduce((m,b)=>{const[x,j]=b,$=Object.values(j).reduce((M,w)=>({...M,...w}),{});return m[x]=$,m},{});r(u),t&&t()},f=()=>{g(Ae(d,l,c)),t&&t()};return n.jsxs(I.Content,{children:[n.jsx(I.Header,{children:n.jsx(os,{id:"condition-modal-breadcrumbs",label:s.join(", "),children:s.map((u,m,b)=>n.jsx(is,{isCurrent:m===b.length-1,children:rs(i({id:u,defaultMessage:u}))},u))})}),n.jsxs(I.Body,{children:[d.length===0&&n.jsx(E,{children:i({id:"Settings.permissions.conditions.no-actions",defaultMessage:"You first need to select actions (create, read, update, ...) before defining conditions on them."})}),n.jsx("ul",{children:d.map(({actionId:u,label:m,pathToConditionsObject:b},x)=>{const j=b.join("..");return n.jsx(ut,{arrayOfOptionsGroupedByCategory:c,label:m,isFormDisabled:o,isGrey:x%2===0,name:j,onChange:h,value:k(p,j,{})},u)})})]}),n.jsxs(I.Footer,{children:[n.jsx(ie,{variant:"tertiary",onClick:()=>f(),children:i({id:"app.components.Button.cancel",defaultMessage:"Cancel"})}),n.jsx(ie,{onClick:C,children:i({id:"Settings.permissions.conditions.apply",defaultMessage:"Apply"})})]})]})},Ae=(e,s,o)=>e.reduce((t,i)=>{const a=k(s,[...i.pathToConditionsObject,"conditions"],{}),l=o.reduce((r,c)=>{const[d,p]=c,g=p.reduce((h,C)=>(h[C.id]=k(a,C.id,!1),h),{});return r[d]=g,r},{});return t[i.pathToConditionsObject.join("..")]=l,t},{}),ut=({arrayOfOptionsGroupedByCategory:e,isFormDisabled:s=!1,isGrey:o=!1,label:t,name:i,onChange:a,value:l})=>{const{formatMessage:r}=P(),c=d=>{a&&a(i,mt(e,d))};return n.jsxs(y,{tag:"li",background:o?"neutral100":"neutral0",paddingBottom:3,paddingTop:3,justifyContent:"space-evenly",children:[n.jsxs(y,{style:{width:180},children:[n.jsxs(E,{variant:"sigma",textColor:"neutral600",children:[r({id:"Settings.permissions.conditions.can",defaultMessage:"Can"})," "]}),n.jsx(E,{variant:"sigma",title:t,textColor:"primary600",ellipsis:!0,children:r({id:`Settings.roles.form.permissions.${t.toLowerCase()}`,defaultMessage:t})}),n.jsxs(E,{variant:"sigma",textColor:"neutral600",children:[" ",r({id:"Settings.permissions.conditions.when",defaultMessage:"When"})]})]}),n.jsx(S,{style:{maxWidth:430,width:"100%"},children:n.jsx(as,{id:i,customizeContent:(d=[])=>`${d.length} currently selected`,onChange:c,value:ht(l),options:gt(e),disabled:s})})]})},ht=e=>Object.values(e).map(s=>Object.entries(s).filter(([,o])=>o).map(([o])=>o)).flat(),gt=e=>e.reduce((s,[o,t])=>(s.push({label:de(o),children:t.map(i=>({label:i.displayName,value:i.id}))}),s),[]),mt=(e,s)=>e.map(([,o])=>o).flat().reduce((o,t)=>({[t.id]:s.includes(t.id),...o}),{}),ft=({actions:e=[],isFormDisabled:s,pathToData:o,subjects:t=[]})=>{const[i,a]=A.useState(null),l=r=>()=>{a(i===r?null:r)};return n.jsx(n.Fragment,{children:t.map(({uid:r,label:c,properties:d},p)=>{const g=i===r,h=e.map(C=>({...C,isDisplayed:Array.isArray(C.subjects)&&C.subjects.indexOf(r)!==-1}));return n.jsxs(y,{direction:"column",display:"inline-flex",alignItems:"stretch",minWidth:"100%",borderColor:g?"primary600":void 0,children:[n.jsx(xt,{availableActions:h,isActive:g,isGrey:p%2===0,isFormDisabled:s,label:c,onClickToggle:l(r),pathToData:[o,r].join("..")}),g&&d.map(({label:C,value:f,children:u})=>n.jsx(Us,{availableActions:h,childrenForm:u,isFormDisabled:s,label:C,pathToData:[o,r].join(".."),propertyName:f},f))]},r)})})},xt=({availableActions:e=[],isActive:s=!1,isGrey:o=!1,isFormDisabled:t=!1,label:i,onClickToggle:a,pathToData:l})=>{const{formatMessage:r}=P(),{modifiedData:c,onChangeParentCheckbox:d,onChangeSimpleCheckbox:p}=q(),[g,h]=A.useState(!1),C=k(c,l.split(".."),{}),f=A.useMemo(()=>Object.keys(C).reduce((j,$)=>(j[$]=Te(C[$],"conditions"),j),{}),[C]),{hasAllActionsSelected:u,hasSomeActionsSelected:m}=G(f),b=A.useMemo(()=>Ct(e,c,l),[e,c,l]),x=b.some(j=>j.hasConditions);return n.jsxs(bt,{$isActive:s,children:[n.jsxs(Fe,{height:se,flex:1,alignItems:"center",background:o?"neutral100":"neutral0",children:[n.jsx(Re,{isCollapsable:!0,isFormDisabled:t,label:de(i),checkboxName:l,onChange:d,onClick:a,someChecked:m,value:u,isActive:s,children:n.jsx(Be,{paddingLeft:2,children:s?n.jsx(ls,{}):n.jsx(cs,{})})}),n.jsx(y,{style:{flex:1},children:b.map(({actionId:j,hasSomeActionsSelected:$,isDisplayed:M,...w})=>{if(!M)return n.jsx(he,{},j);const{hasConditions:O,hasAllActionsSelected:_,isParentCheckbox:W,checkboxName:T,label:K}=w;return W?n.jsx(ke,{justifyContent:"center",alignItems:"center",children:n.jsxs(S,{position:"relative",zIndex:1,children:[O&&n.jsx(S,{tag:"span",position:"absolute",top:"-6px",left:"37px",width:"6px",height:"6px",borderRadius:"20px",background:"primary600"}),n.jsx(L,{disabled:t,name:T,"aria-label":r({id:"Settings.permissions.select-by-permission",defaultMessage:"Select {label} permission"},{label:`${K} ${i}`}),onCheckedChange:F=>{d({target:{name:T,value:!!F}})},checked:$?"indeterminate":_})]})},j):n.jsxs(ke,{justifyContent:"center",alignItems:"center",children:[O&&n.jsx(S,{tag:"span",position:"absolute",top:"-6px",left:"37px",width:"6px",height:"6px",borderRadius:"20px",background:"primary600"}),n.jsx(L,{disabled:t,name:T,onCheckedChange:F=>{p({target:{name:T,value:!!F}})},checked:O?"indeterminate":_})]},j)})})]}),n.jsx(S,{bottom:"10px",right:"9px",position:"absolute",children:n.jsxs(I.Root,{open:g,onOpenChange:()=>{h(j=>!j)},children:[n.jsx(I.Trigger,{children:n.jsx(te,{hasConditions:x})}),n.jsx(Ne,{headerBreadCrumbs:[i,"Settings.permissions.conditions.conditions"],actions:b,isFormDisabled:t,onClose:()=>{h(!1)}})]})})]})},Ct=(e,s,o)=>e.map(({actionId:t,isDisplayed:i,applyToProperties:a,label:l})=>{if(!i)return{actionId:t,hasSomeActionsSelected:!1,isDisplayed:i};const r=[...o.split(".."),t],c=J(a)?[...r,"properties","enabled"]:r,d=k(s,[...r,"conditions"],null),p={actionId:t,checkboxName:c.join(".."),hasConditions:V(d).some(f=>f),isDisplayed:i,label:l,pathToConditionsObject:r};if(J(a)){const f=k(s,c,!1);return{...p,hasAllActionsSelected:f,hasSomeActionsSelected:f,isParentCheckbox:!1}}const g=k(s,c,null),{hasAllActionsSelected:h,hasSomeActionsSelected:C}=G(g);return{...p,hasAllActionsSelected:h,hasSomeActionsSelected:C,isParentCheckbox:!0}}),le=(e,s)=>`
  ${Fe} {
    background-color: ${e.colors.primary100};
    color: ${e.colors.primary600};
    border-radius: ${s?"2px 2px 0 0":"2px"};
    font-weight: ${e.fontWeights.bold};
  }

  ${Be} {
    display: flex;
  }
  ${te} {
    display: block;
  }

  &:focus-within {
    ${()=>le(e,s)}
  }
`,Fe=v(y)`
  border: 1px solid transparent;
`,bt=v.div`
  display: inline-flex;
  min-width: 100%;
  position: relative;

  ${te} {
    display: none;
  }

  ${({$isActive:e,theme:s})=>e&&le(s,e)}

  &:hover {
    ${({theme:e,$isActive:s})=>le(e,s)}
  }
`,ke=v(y)`
  width: ${R};
  position: relative;
`,Be=v(S)`
  display: none;

  svg {
    width: 1.4rem;
  }

  path {
    fill: ${({theme:e})=>e.colors.primary600};
  }
`,jt=({actions:e=[],isFormDisabled:s,kind:o})=>{const{formatMessage:t}=P(),{modifiedData:i,onChangeCollectionTypeGlobalActionCheckbox:a}=q(),l=e.filter(({subjects:c})=>c&&c.length),r=A.useMemo(()=>{const c=l.map(({actionId:h})=>h),d=i[o],p=c.reduce((h,C)=>(Object.keys(d).forEach(f=>{const u=k(d,[f,C]),m={[f]:ue(u)};h[C]?h[C]={...h[C],...m}:h[C]=m}),h),{});return Object.keys(p).reduce((h,C)=>(h[C]=G(p[C]),h),{})},[i,l,o]);return n.jsx(S,{paddingBottom:4,paddingTop:6,style:{paddingLeft:pe},children:n.jsx(y,{gap:0,children:l.map(({label:c,actionId:d})=>n.jsxs(y,{shrink:0,width:R,direction:"column",alignItems:"center",justifyContent:"center",gap:3,children:[n.jsx(E,{variant:"sigma",textColor:"neutral500",children:t({id:`Settings.roles.form.permissions.${c.toLowerCase()}`,defaultMessage:c})}),n.jsx(L,{disabled:s,onCheckedChange:p=>{a(o,d,!!p)},name:d,"aria-label":t({id:"Settings.permissions.select-all-by-permission",defaultMessage:"Select all {label} permissions"},{label:t({id:`Settings.roles.form.permissions.${c.toLowerCase()}`,defaultMessage:c})}),checked:k(r,[d,"hasSomeActionsSelected"],!1)?"indeterminate":k(r,[d,"hasAllActionsSelected"],!1)})]},d))})})},Oe=({isFormDisabled:e,kind:s,layout:{actions:o,subjects:t}})=>{const i=[...t].sort((a,l)=>a.label.localeCompare(l.label));return n.jsxs(S,{background:"neutral0",children:[n.jsx(jt,{actions:o,kind:s,isFormDisabled:e}),n.jsx(ft,{actions:o,isFormDisabled:e,pathToData:s,subjects:i})]})},Se=({layout:e,...s})=>n.jsx(S,{padding:6,background:"neutral0",children:n.jsx(z.Root,{size:"M",children:e.map(({category:o,categoryId:t,childrenForm:i},a)=>n.jsx(yt,{childrenForm:i,variant:a%2===1?"primary":"secondary",name:o,pathToData:[s.kind,t],...s},o))})}),yt=({childrenForm:e,kind:s,name:o,isFormDisabled:t=!1,variant:i,pathToData:a})=>{const{formatMessage:l}=P(),r=o.split("::").pop()??"",c=r==="upload"?"Media Library":de(r.replace(/-/g," "));return n.jsxs(z.Item,{value:o,children:[n.jsx(z.Header,{variant:i,children:n.jsx(z.Trigger,{caretPosition:"right",description:`${l({id:"Settings.permissions.category",defaultMessage:r},{category:r})} ${s==="plugins"?"plugin":s}`,children:c})}),n.jsx(z.Content,{children:n.jsx(S,{padding:6,children:e.map(({actions:d,subCategoryName:p,subCategoryId:g})=>n.jsx(At,{actions:d,categoryName:r,isFormDisabled:t,subCategoryName:p,pathToData:[...a,g]},p))})})]})},At=({actions:e=[],categoryName:s,isFormDisabled:o,subCategoryName:t,pathToData:i})=>{const{modifiedData:a,onChangeParentCheckbox:l,onChangeSimpleCheckbox:r}=q(),[c,d]=A.useState(!1),{formatMessage:p}=P(),g=k(a,i,{}),h=A.useMemo(()=>Object.keys(g).reduce((x,j)=>(x[j]=ue(g[j]),x),{}),[g]),{hasAllActionsSelected:C,hasSomeActionsSelected:f}=G(h),u=A.useMemo(()=>e.map(x=>{const j=[...i,x.action,"properties","enabled"],$=k(a,j,!1),M=k(a,[...i,x.action,"conditions"],{}),w=V(M).some(O=>O);return{...x,isDisplayed:$,checkboxName:j.join(".."),hasSomeActionsSelected:$,value:$,hasConditions:w,label:x.displayName,actionId:x.action,pathToConditionsObject:[...i,x.action]}}),[e,a,i]),m=k(a,[...i],{}),b=V(Object.entries(m).reduce((x,j)=>{const[$,{conditions:M}]=j;return x[$]=M,x},{})).some(x=>x);return n.jsx(n.Fragment,{children:n.jsxs(S,{children:[n.jsxs(y,{justifyContent:"space-between",alignItems:"center",children:[n.jsx(S,{paddingRight:4,children:n.jsx(E,{variant:"sigma",textColor:"neutral600",children:t})}),n.jsx(kt,{flex:1}),n.jsx(S,{paddingLeft:4,children:n.jsx(L,{name:i.join(".."),disabled:o,onCheckedChange:x=>{l({target:{name:i.join(".."),value:!!x}})},checked:f?"indeterminate":C,children:p({id:"app.utils.select-all",defaultMessage:"Select all"})})})]}),n.jsxs(y,{paddingTop:6,paddingBottom:6,children:[n.jsx(me.Root,{gap:2,style:{flex:1},children:u.map(({checkboxName:x,value:j,action:$,displayName:M,hasConditions:w})=>n.jsx(me.Item,{col:4,m:6,xs:12,direction:"column",alignItems:"start",children:n.jsx(Ot,{$disabled:o,$hasConditions:w,children:n.jsx(L,{name:x,disabled:o,onCheckedChange:O=>{r({target:{name:x,value:!!O}})},checked:j,children:M})})},$))}),n.jsxs(I.Root,{open:c,onOpenChange:()=>{d(x=>!x)},children:[n.jsx(I.Trigger,{children:n.jsx(te,{hasConditions:b})}),n.jsx(Ne,{headerBreadCrumbs:[s,t],actions:u,isFormDisabled:o,onClose:()=>{d(!1)}})]})]})]})})},kt=v(S)`
  align-self: center;
  border-top: 1px solid ${({theme:e})=>e.colors.neutral150};
`,Ot=v.div`
  position: relative;
  word-break: keep-all;
  ${({$hasConditions:e,$disabled:s,theme:o})=>e&&`
    &:before {
      content: '';
      position: absolute;
      top: -0.4rem;
      left: -0.8rem;
      width: 0.6rem;
      height: 0.6rem;
      border-radius: 2rem;
      background: ${s?o.colors.neutral100:o.colors.primary600};
    }
  `}
`,X=[{labelId:"app.components.LeftMenuLinkContainer.collectionTypes",defaultMessage:"Collection Types",id:"collectionTypes"},{labelId:"app.components.LeftMenuLinkContainer.singleTypes",id:"singleTypes",defaultMessage:"Single Types"},{labelId:"app.components.LeftMenuLinkContainer.plugins",defaultMessage:"Plugins",id:"plugins"},{labelId:"app.components.LeftMenuLinkContainer.settings",defaultMessage:"Settings",id:"settings"}],Pt=A.forwardRef(({layout:e,isFormDisabled:s,permissions:o=[]},t)=>{const[{initialData:i,layouts:a,modifiedData:l},r]=A.useReducer($t,St,()=>vt(e,o)),{formatMessage:c}=P();A.useImperativeHandle(t,()=>({getPermissions(){const f=fe(i.collectionTypes,l.collectionTypes),u=fe(i.singleTypes,l.singleTypes),m={...f,...u};let b;return J(m)?b=!1:b=Object.values(m).some((x={})=>Object.values(x).some(j=>U(j,"conditions"))),{permissionsToSend:Ls(l),didUpdateConditions:b}},resetForm(){r({type:"RESET_FORM"})},setFormAfterSubmit(){r({type:"SET_FORM_AFTER_SUBMIT"})}}));const d=(f,u,m,b)=>{r({type:"ON_CHANGE_COLLECTION_TYPE_ROW_LEFT_CHECKBOX",pathToCollectionType:f,propertyName:u,rowName:m,value:b})},p=(f,u,m)=>{r({type:"ON_CHANGE_COLLECTION_TYPE_GLOBAL_ACTION_CHECKBOX",collectionTypeKind:f,actionId:u,value:m})},g=f=>{r({type:"ON_CHANGE_CONDITIONS",conditions:f})},h=A.useCallback(({target:{name:f,value:u}})=>{r({type:"ON_CHANGE_SIMPLE_CHECKBOX",keys:f,value:u})},[]),C=A.useCallback(({target:{name:f,value:u}})=>{r({type:"ON_CHANGE_TOGGLE_PARENT_CHECKBOX",keys:f,value:u})},[]);return n.jsx(bs,{availableConditions:e.conditions,modifiedData:l,onChangeConditions:g,onChangeSimpleCheckbox:h,onChangeParentCheckbox:C,onChangeCollectionTypeLeftActionRowCheckbox:d,onChangeCollectionTypeGlobalActionCheckbox:p,children:n.jsxs(H.Root,{defaultValue:X[0].id,children:[n.jsx(H.List,{"aria-label":c({id:"Settings.permissions.users.tabs.label",defaultMessage:"Tabs Permissions"}),children:X.map(f=>n.jsx(H.Trigger,{value:f.id,children:c({id:f.labelId,defaultMessage:f.defaultMessage})},f.id))}),n.jsx(H.Content,{value:X[0].id,children:n.jsx(Oe,{layout:a.collectionTypes,kind:"collectionTypes",isFormDisabled:s})}),n.jsx(H.Content,{value:X[1].id,children:n.jsx(Oe,{layout:a.singleTypes,kind:"singleTypes",isFormDisabled:s})}),n.jsx(H.Content,{value:X[2].id,children:n.jsx(Se,{layout:a.plugins,kind:"plugins",isFormDisabled:s})}),n.jsx(H.Content,{value:X[3].id,children:n.jsx(Se,{layout:a.settings,kind:"settings",isFormDisabled:s})})]})})}),St={initialData:{},modifiedData:{},layouts:{}},$t=(e,s)=>Me(e,o=>{switch(s.type){case"ON_CHANGE_COLLECTION_TYPE_GLOBAL_ACTION_CHECKBOX":{const{collectionTypeKind:t,actionId:i,value:a}=s,l=["modifiedData",t];Object.keys(k(e,l)).forEach(r=>{const c=k(e,[...l,r,i],void 0);if(c){let d=Y(c,a);if(!a&&d.conditions){const p=Y(d.conditions,!1);d={...d,conditions:p}}D(o,[...l,r,i],d)}});break}case"ON_CHANGE_COLLECTION_TYPE_ROW_LEFT_CHECKBOX":{const{pathToCollectionType:t,propertyName:i,rowName:a,value:l}=s;let r=oe(e.modifiedData);const c=t.split(".."),d=k(r,c,{});Object.keys(d).forEach(p=>{if(U(d[p],`properties.${i}`)){const g=k(d,[p,"properties",i,a]),h=[...c,p,"properties",i,a];if(!N(g))D(r,h,l);else{const C=Y(g,l);D(r,h,C)}}}),l||(r=Q(r)),D(o,"modifiedData",r);break}case"ON_CHANGE_CONDITIONS":{Object.entries(s.conditions).forEach(t=>{const[i,a]=t;D(o,["modifiedData",...i.split(".."),"conditions"],a)});break}case"ON_CHANGE_SIMPLE_CHECKBOX":{let t=oe(e.modifiedData);D(t,[...s.keys.split("..")],s.value),s.value||(t=Q(t)),D(o,"modifiedData",t);break}case"ON_CHANGE_TOGGLE_PARENT_CHECKBOX":{const{keys:t,value:i}=s,a=[...t.split("..")];let l=oe(e.modifiedData);const r=k(l,a,{}),c=Y(r,i);D(l,a,c),i||(l=Q(l)),D(o,["modifiedData"],l);break}case"RESET_FORM":{o.modifiedData=e.initialData;break}case"SET_FORM_AFTER_SUBMIT":{o.initialData=e.modifiedData;break}default:return o}}),vt=(e,s)=>{const{conditions:o,sections:{collectionTypes:t,singleTypes:i,plugins:a,settings:l}}=e,r={collectionTypes:t,singleTypes:i,plugins:ye(a,"plugin"),settings:ye(l,"category")},c={collectionTypes:je(t,o,s),singleTypes:je(i,o,s),plugins:be(r.plugins,o,s),settings:be(r.settings,o,s)};return{initialData:c,modifiedData:c,layouts:r}};export{Pt as P};
