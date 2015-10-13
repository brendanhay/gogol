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
-- | Updates an existing template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateUpdate@.
module Network.Google.Resource.FusionTables.Template.Update
    (
    -- * REST Resource
      TemplateUpdateResource

    -- * Creating a Request
    , templateUpdate'
    , TemplateUpdate'

    -- * Request Lenses
    , temTemplateId
    , temPayload
    , temTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateUpdate@ method which the
-- 'TemplateUpdate'' request conforms to.
type TemplateUpdateResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Template :> Put '[JSON] Template

-- | Updates an existing template
--
-- /See:/ 'templateUpdate'' smart constructor.
data TemplateUpdate' = TemplateUpdate'
    { _temTemplateId :: !Int32
    , _temPayload    :: !Template
    , _temTableId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temTemplateId'
--
-- * 'temPayload'
--
-- * 'temTableId'
templateUpdate'
    :: Int32 -- ^ 'templateId'
    -> Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplateUpdate'
templateUpdate' pTemTemplateId_ pTemPayload_ pTemTableId_ =
    TemplateUpdate'
    { _temTemplateId = pTemTemplateId_
    , _temPayload = pTemPayload_
    , _temTableId = pTemTableId_
    }

-- | Identifier for the template that is being updated
temTemplateId :: Lens' TemplateUpdate' Int32
temTemplateId
  = lens _temTemplateId
      (\ s a -> s{_temTemplateId = a})

-- | Multipart request metadata.
temPayload :: Lens' TemplateUpdate' Template
temPayload
  = lens _temPayload (\ s a -> s{_temPayload = a})

-- | Table to which the updated template belongs
temTableId :: Lens' TemplateUpdate' Text
temTableId
  = lens _temTableId (\ s a -> s{_temTableId = a})

instance GoogleRequest TemplateUpdate' where
        type Rs TemplateUpdate' = Template
        requestClient TemplateUpdate'{..}
          = go _temTableId _temTemplateId (Just AltJSON)
              _temPayload
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateUpdateResource)
                      mempty
