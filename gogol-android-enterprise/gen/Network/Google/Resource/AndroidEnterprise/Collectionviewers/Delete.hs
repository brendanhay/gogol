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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collectionviewers.delete@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
    (
    -- * REST Resource
      CollectionviewersDeleteResource

    -- * Creating a Request
    , collectionviewersDelete
    , CollectionviewersDelete

    -- * Request Lenses
    , cdEnterpriseId
    , cdCollectionId
    , cdUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collectionviewers.delete@ method which the
-- 'CollectionviewersDelete' request conforms to.
type CollectionviewersDeleteResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 "users" :>
                   Capture "userId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersDelete' smart constructor.
data CollectionviewersDelete = CollectionviewersDelete'
    { _cdEnterpriseId :: !Text
    , _cdCollectionId :: !Text
    , _cdUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdEnterpriseId'
--
-- * 'cdCollectionId'
--
-- * 'cdUserId'
collectionviewersDelete
    :: Text -- ^ 'cdEnterpriseId'
    -> Text -- ^ 'cdCollectionId'
    -> Text -- ^ 'cdUserId'
    -> CollectionviewersDelete
collectionviewersDelete pCdEnterpriseId_ pCdCollectionId_ pCdUserId_ =
    CollectionviewersDelete'
    { _cdEnterpriseId = pCdEnterpriseId_
    , _cdCollectionId = pCdCollectionId_
    , _cdUserId = pCdUserId_
    }

-- | The ID of the enterprise.
cdEnterpriseId :: Lens' CollectionviewersDelete Text
cdEnterpriseId
  = lens _cdEnterpriseId
      (\ s a -> s{_cdEnterpriseId = a})

-- | The ID of the collection.
cdCollectionId :: Lens' CollectionviewersDelete Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

-- | The ID of the user.
cdUserId :: Lens' CollectionviewersDelete Text
cdUserId = lens _cdUserId (\ s a -> s{_cdUserId = a})

instance GoogleRequest CollectionviewersDelete where
        type Rs CollectionviewersDelete = ()
        type Scopes CollectionviewersDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient CollectionviewersDelete'{..}
          = go _cdEnterpriseId _cdCollectionId _cdUserId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersDeleteResource)
                      mempty
