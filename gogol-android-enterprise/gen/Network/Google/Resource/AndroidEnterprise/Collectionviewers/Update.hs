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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersUpdate@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
    (
    -- * REST Resource
      CollectionviewersUpdateResource

    -- * Creating a Request
    , collectionviewersUpdate'
    , CollectionviewersUpdate'

    -- * Request Lenses
    , cuuEnterpriseId
    , cuuCollectionId
    , cuuPayload
    , cuuUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersUpdate@ method which the
-- 'CollectionviewersUpdate'' request conforms to.
type CollectionviewersUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] User :> Put '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersUpdate'' smart constructor.
data CollectionviewersUpdate' = CollectionviewersUpdate'
    { _cuuEnterpriseId :: !Text
    , _cuuCollectionId :: !Text
    , _cuuPayload      :: !User
    , _cuuUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuEnterpriseId'
--
-- * 'cuuCollectionId'
--
-- * 'cuuPayload'
--
-- * 'cuuUserId'
collectionviewersUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> User -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> CollectionviewersUpdate'
collectionviewersUpdate' pCuuEnterpriseId_ pCuuCollectionId_ pCuuPayload_ pCuuUserId_ =
    CollectionviewersUpdate'
    { _cuuEnterpriseId = pCuuEnterpriseId_
    , _cuuCollectionId = pCuuCollectionId_
    , _cuuPayload = pCuuPayload_
    , _cuuUserId = pCuuUserId_
    }

-- | The ID of the enterprise.
cuuEnterpriseId :: Lens' CollectionviewersUpdate' Text
cuuEnterpriseId
  = lens _cuuEnterpriseId
      (\ s a -> s{_cuuEnterpriseId = a})

-- | The ID of the collection.
cuuCollectionId :: Lens' CollectionviewersUpdate' Text
cuuCollectionId
  = lens _cuuCollectionId
      (\ s a -> s{_cuuCollectionId = a})

-- | Multipart request metadata.
cuuPayload :: Lens' CollectionviewersUpdate' User
cuuPayload
  = lens _cuuPayload (\ s a -> s{_cuuPayload = a})

-- | The ID of the user.
cuuUserId :: Lens' CollectionviewersUpdate' Text
cuuUserId
  = lens _cuuUserId (\ s a -> s{_cuuUserId = a})

instance GoogleRequest CollectionviewersUpdate' where
        type Rs CollectionviewersUpdate' = User
        requestClient CollectionviewersUpdate'{..}
          = go _cuuEnterpriseId _cuuCollectionId _cuuUserId
              (Just AltJSON)
              _cuuPayload
              androidEnterprise
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersUpdateResource)
                      mempty
