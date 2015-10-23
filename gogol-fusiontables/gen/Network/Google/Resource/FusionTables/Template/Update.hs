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
-- Module      : Network.Google.Resource.FusionTables.Template.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.update@.
module Network.Google.Resource.FusionTables.Template.Update
    (
    -- * REST Resource
      TemplateUpdateResource

    -- * Creating a Request
    , templateUpdate
    , TemplateUpdate

    -- * Request Lenses
    , tuTemplateId
    , tuPayload
    , tuTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.template.update@ method which the
-- 'TemplateUpdate' request conforms to.
type TemplateUpdateResource =
     "fusiontables" :>
       "v2" :>
         "tables" :>
           Capture "tableId" Text :>
             "templates" :>
               Capture "templateId" (JSONText Int32) :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Template :> Put '[JSON] Template

-- | Updates an existing template
--
-- /See:/ 'templateUpdate' smart constructor.
data TemplateUpdate = TemplateUpdate
    { _tuTemplateId :: !(JSONText Int32)
    , _tuPayload    :: !Template
    , _tuTableId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuTemplateId'
--
-- * 'tuPayload'
--
-- * 'tuTableId'
templateUpdate
    :: Int32 -- ^ 'tuTemplateId'
    -> Template -- ^ 'tuPayload'
    -> Text -- ^ 'tuTableId'
    -> TemplateUpdate
templateUpdate pTuTemplateId_ pTuPayload_ pTuTableId_ =
    TemplateUpdate
    { _tuTemplateId = pTuTemplateId_
    , _tuPayload = pTuPayload_
    , _tuTableId = pTuTableId_
    }

-- | Identifier for the template that is being updated
tuTemplateId :: Lens' TemplateUpdate Int32
tuTemplateId
  = lens _tuTemplateId (\ s a -> s{_tuTemplateId = a})
      . _Coerce

-- | Multipart request metadata.
tuPayload :: Lens' TemplateUpdate Template
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | Table to which the updated template belongs
tuTableId :: Lens' TemplateUpdate Text
tuTableId
  = lens _tuTableId (\ s a -> s{_tuTableId = a})

instance GoogleRequest TemplateUpdate where
        type Rs TemplateUpdate = Template
        requestClient TemplateUpdate{..}
          = go _tuTableId _tuTemplateId (Just AltJSON)
              _tuPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateUpdateResource)
                      mempty
