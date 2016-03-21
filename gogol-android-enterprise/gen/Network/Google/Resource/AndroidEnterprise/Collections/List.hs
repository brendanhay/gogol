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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collections.list@.
module Network.Google.Resource.AndroidEnterprise.Collections.List
    (
    -- * REST Resource
      CollectionsListResource

    -- * Creating a Request
    , collectionsList
    , CollectionsList

    -- * Request Lenses
    , clEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.list@ method which the
-- 'CollectionsList' request conforms to.
type CollectionsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] CollectionsListResponse

-- | Retrieves the IDs of all the collections for an enterprise.
--
-- /See:/ 'collectionsList' smart constructor.
newtype CollectionsList = CollectionsList'
    { _clEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEnterpriseId'
collectionsList
    :: Text -- ^ 'clEnterpriseId'
    -> CollectionsList
collectionsList pClEnterpriseId_ =
    CollectionsList'
    { _clEnterpriseId = pClEnterpriseId_
    }

-- | The ID of the enterprise.
clEnterpriseId :: Lens' CollectionsList Text
clEnterpriseId
  = lens _clEnterpriseId
      (\ s a -> s{_clEnterpriseId = a})

instance GoogleRequest CollectionsList where
        type Rs CollectionsList = CollectionsListResponse
        type Scopes CollectionsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient CollectionsList'{..}
          = go _clEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsListResource)
                      mempty
