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
-- Module      : Network.Google.Resource.FusionTables.Template.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of templates.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.template.list@.
module Network.Google.Resource.FusionTables.Template.List
    (
    -- * REST Resource
      TemplateListResource

    -- * Creating a Request
    , templateList'
    , TemplateList'

    -- * Request Lenses
    , tllPageToken
    , tllTableId
    , tllMaxResults
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @fusiontables.template.list@ method which the
-- 'TemplateList'' request conforms to.
type TemplateListResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :> Get '[JSON] TemplateList

-- | Retrieves a list of templates.
--
-- /See:/ 'templateList'' smart constructor.
data TemplateList' = TemplateList'
    { _tllPageToken  :: !(Maybe Text)
    , _tllTableId    :: !Text
    , _tllMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllPageToken'
--
-- * 'tllTableId'
--
-- * 'tllMaxResults'
templateList'
    :: Text -- ^ 'tllTableId'
    -> TemplateList'
templateList' pTllTableId_ =
    TemplateList'
    { _tllPageToken = Nothing
    , _tllTableId = pTllTableId_
    , _tllMaxResults = Nothing
    }

-- | Continuation token specifying which results page to return. Optional.
tllPageToken :: Lens' TemplateList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | Identifier for the table whose templates are being requested
tllTableId :: Lens' TemplateList' Text
tllTableId
  = lens _tllTableId (\ s a -> s{_tllTableId = a})

-- | Maximum number of templates to return. Optional. Default is 5.
tllMaxResults :: Lens' TemplateList' (Maybe Word32)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

instance GoogleRequest TemplateList' where
        type Rs TemplateList' = TemplateList
        requestClient TemplateList'{..}
          = go _tllTableId _tllPageToken _tllMaxResults
              (Just AltJSON)
              fusionTablesService
          where go
                  = buildClient (Proxy :: Proxy TemplateListResource)
                      mempty
