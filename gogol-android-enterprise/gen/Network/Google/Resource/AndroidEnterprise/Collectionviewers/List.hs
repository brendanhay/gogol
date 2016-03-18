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
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collectionviewers.list@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.List
    (
    -- * REST Resource
      CollectionviewersListResource

    -- * Creating a Request
    , collectionviewersList
    , CollectionviewersList

    -- * Request Lenses
    , cEnterpriseId
    , cCollectionId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collectionviewers.list@ method which the
-- 'CollectionviewersList' request conforms to.
type CollectionviewersListResource =
     "androidenterprise" :>
       "v1" :>
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
-- /See:/ 'collectionviewersList' smart constructor.
data CollectionviewersList = CollectionviewersList
    { _cEnterpriseId :: !Text
    , _cCollectionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cEnterpriseId'
--
-- * 'cCollectionId'
collectionviewersList
    :: Text -- ^ 'cEnterpriseId'
    -> Text -- ^ 'cCollectionId'
    -> CollectionviewersList
collectionviewersList pCEnterpriseId_ pCCollectionId_ =
    CollectionviewersList
    { _cEnterpriseId = pCEnterpriseId_
    , _cCollectionId = pCCollectionId_
    }

-- | The ID of the enterprise.
cEnterpriseId :: Lens' CollectionviewersList Text
cEnterpriseId
  = lens _cEnterpriseId
      (\ s a -> s{_cEnterpriseId = a})

-- | The ID of the collection.
cCollectionId :: Lens' CollectionviewersList Text
cCollectionId
  = lens _cCollectionId
      (\ s a -> s{_cCollectionId = a})

instance GoogleRequest CollectionviewersList where
        type Rs CollectionviewersList =
             CollectionViewersListResponse
        requestClient CollectionviewersList{..}
          = go _cEnterpriseId _cCollectionId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersListResource)
                      mempty
