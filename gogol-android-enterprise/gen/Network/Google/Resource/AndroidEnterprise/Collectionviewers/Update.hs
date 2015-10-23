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
-- Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collectionviewers.update@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Update
    (
    -- * REST Resource
      CollectionviewersUpdateResource

    -- * Creating a Request
    , collectionviewersUpdate
    , CollectionviewersUpdate

    -- * Request Lenses
    , cuEnterpriseId
    , cuCollectionId
    , cuPayload
    , cuUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collectionviewers.update@ method which the
-- 'CollectionviewersUpdate' request conforms to.
type CollectionviewersUpdateResource =
     "androidenterprise" :>
       "v1" :>
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
-- /See:/ 'collectionviewersUpdate' smart constructor.
data CollectionviewersUpdate = CollectionviewersUpdate
    { _cuEnterpriseId :: !Text
    , _cuCollectionId :: !Text
    , _cuPayload      :: !User
    , _cuUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuEnterpriseId'
--
-- * 'cuCollectionId'
--
-- * 'cuPayload'
--
-- * 'cuUserId'
collectionviewersUpdate
    :: Text -- ^ 'cuEnterpriseId'
    -> Text -- ^ 'cuCollectionId'
    -> User -- ^ 'cuPayload'
    -> Text -- ^ 'cuUserId'
    -> CollectionviewersUpdate
collectionviewersUpdate pCuEnterpriseId_ pCuCollectionId_ pCuPayload_ pCuUserId_ =
    CollectionviewersUpdate
    { _cuEnterpriseId = pCuEnterpriseId_
    , _cuCollectionId = pCuCollectionId_
    , _cuPayload = pCuPayload_
    , _cuUserId = pCuUserId_
    }

-- | The ID of the enterprise.
cuEnterpriseId :: Lens' CollectionviewersUpdate Text
cuEnterpriseId
  = lens _cuEnterpriseId
      (\ s a -> s{_cuEnterpriseId = a})

-- | The ID of the collection.
cuCollectionId :: Lens' CollectionviewersUpdate Text
cuCollectionId
  = lens _cuCollectionId
      (\ s a -> s{_cuCollectionId = a})

-- | Multipart request metadata.
cuPayload :: Lens' CollectionviewersUpdate User
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | The ID of the user.
cuUserId :: Lens' CollectionviewersUpdate Text
cuUserId = lens _cuUserId (\ s a -> s{_cuUserId = a})

instance GoogleRequest CollectionviewersUpdate where
        type Rs CollectionviewersUpdate = User
        requestClient CollectionviewersUpdate{..}
          = go _cuEnterpriseId _cuCollectionId _cuUserId
              (Just AltJSON)
              _cuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersUpdateResource)
                      mempty
