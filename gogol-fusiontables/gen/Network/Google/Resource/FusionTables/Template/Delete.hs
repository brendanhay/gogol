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
-- Module      : Network.Google.Resource.FusionTables.Template.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateDelete@.
module Network.Google.Resource.FusionTables.Template.Delete
    (
    -- * REST Resource
      TemplateDeleteResource

    -- * Creating a Request
    , templateDelete'
    , TemplateDelete'

    -- * Request Lenses
    , tddTemplateId
    , tddTableId
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateDelete@ method which the
-- 'TemplateDelete'' request conforms to.
type TemplateDeleteResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a template
--
-- /See:/ 'templateDelete'' smart constructor.
data TemplateDelete' = TemplateDelete'
    { _tddTemplateId :: !Int32
    , _tddTableId    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tddTemplateId'
--
-- * 'tddTableId'
templateDelete'
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateDelete'
templateDelete' pTddTemplateId_ pTddTableId_ =
    TemplateDelete'
    { _tddTemplateId = pTddTemplateId_
    , _tddTableId = pTddTableId_
    }

-- | Identifier for the template which is being deleted
tddTemplateId :: Lens' TemplateDelete' Int32
tddTemplateId
  = lens _tddTemplateId
      (\ s a -> s{_tddTemplateId = a})

-- | Table from which the template is being deleted
tddTableId :: Lens' TemplateDelete' Text
tddTableId
  = lens _tddTableId (\ s a -> s{_tddTableId = a})

instance GoogleRequest TemplateDelete' where
        type Rs TemplateDelete' = ()
        requestClient TemplateDelete'{..}
          = go _tddTableId _tddTemplateId (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateDeleteResource)
                      mempty
