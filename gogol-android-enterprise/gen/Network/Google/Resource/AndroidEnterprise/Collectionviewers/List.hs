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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersList@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
    (
    -- * REST Resource
      CollectionviewersListResource

    -- * Creating a Request
    , collectionviewersList'
    , CollectionviewersList'

    -- * Request Lenses
    , clEnterpriseId
    , clCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersList@ method which the
-- 'CollectionviewersList'' request conforms to.
type CollectionviewersListResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] CollectionViewersListResponse

-- | Retrieves the IDs of the users who have been specifically allowed to see
-- the collection. If the collection\'s visibility is set to viewersOnly
-- then only these users will see the collection.
--
-- /See:/ 'collectionviewersList'' smart constructor.
data CollectionviewersList' = CollectionviewersList'
    { _clEnterpriseId :: !Text
    , _clCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clEnterpriseId'
--
-- * 'clCollectionId'
collectionviewersList'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionviewersList'
collectionviewersList' pClEnterpriseId_ pClCollectionId_ =
    CollectionviewersList'
    { _clEnterpriseId = pClEnterpriseId_
    , _clCollectionId = pClCollectionId_
    }

-- | The ID of the enterprise.
clEnterpriseId :: Lens' CollectionviewersList' Text
clEnterpriseId
  = lens _clEnterpriseId
      (\ s a -> s{_clEnterpriseId = a})

-- | The ID of the collection.
clCollectionId :: Lens' CollectionviewersList' Text
clCollectionId
  = lens _clCollectionId
      (\ s a -> s{_clCollectionId = a})

instance GoogleRequest CollectionviewersList' where
        type Rs CollectionviewersList' =
             CollectionViewersListResponse
        requestClient CollectionviewersList'{..}
          = go _clEnterpriseId _clCollectionId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersListResource)
                      mempty
