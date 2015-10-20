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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.get@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
    (
    -- * REST Resource
      CollectionviewersGetResource

    -- * Creating a Request
    , collectionviewersGet
    , CollectionviewersGet

    -- * Request Lenses
    , cggEnterpriseId
    , cggCollectionId
    , cggUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collectionviewers.get@ method which the
-- 'CollectionviewersGet' request conforms to.
type CollectionviewersGetResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] User

-- | Retrieves the ID of the user if they have been specifically allowed to
-- see the collection. If the collection\'s visibility is set to
-- viewersOnly then only these users will see the collection.
--
-- /See:/ 'collectionviewersGet' smart constructor.
data CollectionviewersGet = CollectionviewersGet
    { _cggEnterpriseId :: !Text
    , _cggCollectionId :: !Text
    , _cggUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cggEnterpriseId'
--
-- * 'cggCollectionId'
--
-- * 'cggUserId'
collectionviewersGet
    :: Text -- ^ 'cggEnterpriseId'
    -> Text -- ^ 'cggCollectionId'
    -> Text -- ^ 'cggUserId'
    -> CollectionviewersGet
collectionviewersGet pCggEnterpriseId_ pCggCollectionId_ pCggUserId_ =
    CollectionviewersGet
    { _cggEnterpriseId = pCggEnterpriseId_
    , _cggCollectionId = pCggCollectionId_
    , _cggUserId = pCggUserId_
    }

-- | The ID of the enterprise.
cggEnterpriseId :: Lens' CollectionviewersGet Text
cggEnterpriseId
  = lens _cggEnterpriseId
      (\ s a -> s{_cggEnterpriseId = a})

-- | The ID of the collection.
cggCollectionId :: Lens' CollectionviewersGet Text
cggCollectionId
  = lens _cggCollectionId
      (\ s a -> s{_cggCollectionId = a})

-- | The ID of the user.
cggUserId :: Lens' CollectionviewersGet Text
cggUserId
  = lens _cggUserId (\ s a -> s{_cggUserId = a})

instance GoogleRequest CollectionviewersGet where
        type Rs CollectionviewersGet = User
        requestClient CollectionviewersGet{..}
          = go _cggEnterpriseId _cggCollectionId _cggUserId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersGetResource)
                      mempty
