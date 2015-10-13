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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsUpdate@.
module Network.Google.Resource.AndroidEnterprise.Collections.Update
    (
    -- * REST Resource
      CollectionsUpdateResource

    -- * Creating a Request
    , collectionsUpdate'
    , CollectionsUpdate'

    -- * Request Lenses
    , cuEnterpriseId
    , cuCollectionId
    , cuPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsUpdate@ method which the
-- 'CollectionsUpdate'' request conforms to.
type CollectionsUpdateResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Collection :> Put '[JSON] Collection

-- | Updates a collection.
--
-- /See:/ 'collectionsUpdate'' smart constructor.
data CollectionsUpdate' = CollectionsUpdate'
    { _cuEnterpriseId :: !Text
    , _cuCollectionId :: !Text
    , _cuPayload      :: !Collection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuEnterpriseId'
--
-- * 'cuCollectionId'
--
-- * 'cuPayload'
collectionsUpdate'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Collection -- ^ 'payload'
    -> CollectionsUpdate'
collectionsUpdate' pCuEnterpriseId_ pCuCollectionId_ pCuPayload_ =
    CollectionsUpdate'
    { _cuEnterpriseId = pCuEnterpriseId_
    , _cuCollectionId = pCuCollectionId_
    , _cuPayload = pCuPayload_
    }

-- | The ID of the enterprise.
cuEnterpriseId :: Lens' CollectionsUpdate' Text
cuEnterpriseId
  = lens _cuEnterpriseId
      (\ s a -> s{_cuEnterpriseId = a})

-- | The ID of the collection.
cuCollectionId :: Lens' CollectionsUpdate' Text
cuCollectionId
  = lens _cuCollectionId
      (\ s a -> s{_cuCollectionId = a})

-- | Multipart request metadata.
cuPayload :: Lens' CollectionsUpdate' Collection
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

instance GoogleRequest CollectionsUpdate' where
        type Rs CollectionsUpdate' = Collection
        requestClient CollectionsUpdate'{..}
          = go _cuEnterpriseId _cuCollectionId (Just AltJSON)
              _cuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsUpdateResource)
                      mempty
