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
-- Updates a collection.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collections.update@.
module Network.Google.Resource.AndroidEnterprise.Collections.Update
    (
    -- * REST Resource
      CollectionsUpdateResource

    -- * Creating a Request
    , collectionsUpdate
    , CollectionsUpdate

    -- * Request Lenses
    , cuuEnterpriseId
    , cuuCollectionId
    , cuuPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.update@ method which the
-- 'CollectionsUpdate' request conforms to.
type CollectionsUpdateResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Collection :> Put '[JSON] Collection

-- | Updates a collection.
--
-- /See:/ 'collectionsUpdate' smart constructor.
data CollectionsUpdate = CollectionsUpdate
    { _cuuEnterpriseId :: !Text
    , _cuuCollectionId :: !Text
    , _cuuPayload      :: !Collection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuuEnterpriseId'
--
-- * 'cuuCollectionId'
--
-- * 'cuuPayload'
collectionsUpdate
    :: Text -- ^ 'cuuEnterpriseId'
    -> Text -- ^ 'cuuCollectionId'
    -> Collection -- ^ 'cuuPayload'
    -> CollectionsUpdate
collectionsUpdate pCuuEnterpriseId_ pCuuCollectionId_ pCuuPayload_ =
    CollectionsUpdate
    { _cuuEnterpriseId = pCuuEnterpriseId_
    , _cuuCollectionId = pCuuCollectionId_
    , _cuuPayload = pCuuPayload_
    }

-- | The ID of the enterprise.
cuuEnterpriseId :: Lens' CollectionsUpdate Text
cuuEnterpriseId
  = lens _cuuEnterpriseId
      (\ s a -> s{_cuuEnterpriseId = a})

-- | The ID of the collection.
cuuCollectionId :: Lens' CollectionsUpdate Text
cuuCollectionId
  = lens _cuuCollectionId
      (\ s a -> s{_cuuCollectionId = a})

-- | Multipart request metadata.
cuuPayload :: Lens' CollectionsUpdate Collection
cuuPayload
  = lens _cuuPayload (\ s a -> s{_cuuPayload = a})

instance GoogleRequest CollectionsUpdate where
        type Rs CollectionsUpdate = Collection
        requestClient CollectionsUpdate{..}
          = go _cuuEnterpriseId _cuuCollectionId (Just AltJSON)
              _cuuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsUpdateResource)
                      mempty
