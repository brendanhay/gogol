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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersDelete@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
    (
    -- * REST Resource
      CollectionviewersDeleteResource

    -- * Creating a Request
    , collectionviewersDelete'
    , CollectionviewersDelete'

    -- * Request Lenses
    , cddEnterpriseId
    , cddCollectionId
    , cddUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersDelete@ method which the
-- 'CollectionviewersDelete'' request conforms to.
type CollectionviewersDeleteResource =
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
-- /See:/ 'collectionviewersDelete'' smart constructor.
data CollectionviewersDelete' = CollectionviewersDelete'
    { _cddEnterpriseId :: !Text
    , _cddCollectionId :: !Text
    , _cddUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddEnterpriseId'
--
-- * 'cddCollectionId'
--
-- * 'cddUserId'
collectionviewersDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersDelete'
collectionviewersDelete' pCddEnterpriseId_ pCddCollectionId_ pCddUserId_ =
    CollectionviewersDelete'
    { _cddEnterpriseId = pCddEnterpriseId_
    , _cddCollectionId = pCddCollectionId_
    , _cddUserId = pCddUserId_
    }

-- | The ID of the enterprise.
cddEnterpriseId :: Lens' CollectionviewersDelete' Text
cddEnterpriseId
  = lens _cddEnterpriseId
      (\ s a -> s{_cddEnterpriseId = a})

-- | The ID of the collection.
cddCollectionId :: Lens' CollectionviewersDelete' Text
cddCollectionId
  = lens _cddCollectionId
      (\ s a -> s{_cddCollectionId = a})

-- | The ID of the user.
cddUserId :: Lens' CollectionviewersDelete' Text
cddUserId
  = lens _cddUserId (\ s a -> s{_cddUserId = a})

instance GoogleRequest CollectionviewersDelete' where
        type Rs CollectionviewersDelete' = ()
        requestClient CollectionviewersDelete'{..}
          = go _cddEnterpriseId _cddCollectionId _cddUserId
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionviewersDeleteResource)
                      mempty
