{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing template. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.patch@.
module Network.Google.Resource.FusionTables.Template.Patch
    (
    -- * REST Resource
      TemplatePatchResource

    -- * Creating a Request
    , templatePatch
    , TemplatePatch

    -- * Request Lenses
    , tppTemplateId
    , tppPayload
    , tppTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.template.patch@ method which the
-- 'TemplatePatch' request conforms to.
type TemplatePatchResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "templates" :>
               Capture "templateId" (Textual Int32) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Template :> Patch '[JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'templatePatch' smart constructor.
data TemplatePatch =
  TemplatePatch'
    { _tppTemplateId :: !(Textual Int32)
    , _tppPayload    :: !Template
    , _tppTableId    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TemplatePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppTemplateId'
--
-- * 'tppPayload'
--
-- * 'tppTableId'
templatePatch
    :: Int32 -- ^ 'tppTemplateId'
    -> Template -- ^ 'tppPayload'
    -> Text -- ^ 'tppTableId'
    -> TemplatePatch
templatePatch pTppTemplateId_ pTppPayload_ pTppTableId_ =
  TemplatePatch'
    { _tppTemplateId = _Coerce # pTppTemplateId_
    , _tppPayload = pTppPayload_
    , _tppTableId = pTppTableId_
    }

-- | Identifier for the template that is being updated
tppTemplateId :: Lens' TemplatePatch Int32
tppTemplateId
  = lens _tppTemplateId
      (\ s a -> s{_tppTemplateId = a})
      . _Coerce

-- | Multipart request metadata.
tppPayload :: Lens' TemplatePatch Template
tppPayload
  = lens _tppPayload (\ s a -> s{_tppPayload = a})

-- | Table to which the updated template belongs
tppTableId :: Lens' TemplatePatch Text
tppTableId
  = lens _tppTableId (\ s a -> s{_tppTableId = a})

instance GoogleRequest TemplatePatch where
        type Rs TemplatePatch = Template
        type Scopes TemplatePatch =
             '["https://www.googleapis.com/auth/fusiontables"]
        requestClient TemplatePatch'{..}
          = go _tppTableId _tppTemplateId (Just AltJSON)
              _tppPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplatePatchResource)
                      mempty
