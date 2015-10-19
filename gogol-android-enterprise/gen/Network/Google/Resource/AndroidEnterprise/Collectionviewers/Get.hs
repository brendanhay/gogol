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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersGet@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Get
    (
    -- * REST Resource
      CollectionviewersGetResource

    -- * Creating a Request
    , collectionviewersGet'
    , CollectionviewersGet'

    -- * Request Lenses
    , cgEnterpriseId
    , cgCollectionId
    , cgUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersGet@ method which the
-- 'CollectionviewersGet'' request conforms to.
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
-- /See:/ 'collectionviewersGet'' smart constructor.
data CollectionviewersGet' = CollectionviewersGet'
    { _cgEnterpriseId :: !Text
    , _cgCollectionId :: !Text
    , _cgUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgEnterpriseId'
--
-- * 'cgCollectionId'
--
-- * 'cgUserId'
collectionviewersGet'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersGet'
collectionviewersGet' pCgEnterpriseId_ pCgCollectionId_ pCgUserId_ =
    CollectionviewersGet'
    { _cgEnterpriseId = pCgEnterpriseId_
    , _cgCollectionId = pCgCollectionId_
    , _cgUserId = pCgUserId_
    }

-- | The ID of the enterprise.
cgEnterpriseId :: Lens' CollectionviewersGet' Text
cgEnterpriseId
  = lens _cgEnterpriseId
      (\ s a -> s{_cgEnterpriseId = a})

-- | The ID of the collection.
cgCollectionId :: Lens' CollectionviewersGet' Text
cgCollectionId
  = lens _cgCollectionId
      (\ s a -> s{_cgCollectionId = a})

-- | The ID of the user.
cgUserId :: Lens' CollectionviewersGet' Text
cgUserId = lens _cgUserId (\ s a -> s{_cgUserId = a})

instance GoogleRequest CollectionviewersGet' where
        type Rs CollectionviewersGet' = User
        requestClient CollectionviewersGet'{..}
          = go _cgEnterpriseId _cgCollectionId _cgUserId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersGetResource)
                      mempty
