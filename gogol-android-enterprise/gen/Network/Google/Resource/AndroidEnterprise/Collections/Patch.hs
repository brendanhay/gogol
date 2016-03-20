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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a collection. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.collections.patch@.
module Network.Google.Resource.AndroidEnterprise.Collections.Patch
    (
    -- * REST Resource
      CollectionsPatchResource

    -- * Creating a Request
    , collectionsPatch
    , CollectionsPatch

    -- * Request Lenses
    , cpEnterpriseId
    , cpCollectionId
    , cpPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.patch@ method which the
-- 'CollectionsPatch' request conforms to.
type CollectionsPatchResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "collections" :>
               Capture "collectionId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Collection :>
                     Patch '[JSON] Collection

-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ 'collectionsPatch' smart constructor.
data CollectionsPatch = CollectionsPatch
    { _cpEnterpriseId :: !Text
    , _cpCollectionId :: !Text
    , _cpPayload      :: !Collection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpEnterpriseId'
--
-- * 'cpCollectionId'
--
-- * 'cpPayload'
collectionsPatch
    :: Text -- ^ 'cpEnterpriseId'
    -> Text -- ^ 'cpCollectionId'
    -> Collection -- ^ 'cpPayload'
    -> CollectionsPatch
collectionsPatch pCpEnterpriseId_ pCpCollectionId_ pCpPayload_ =
    CollectionsPatch
    { _cpEnterpriseId = pCpEnterpriseId_
    , _cpCollectionId = pCpCollectionId_
    , _cpPayload = pCpPayload_
    }

-- | The ID of the enterprise.
cpEnterpriseId :: Lens' CollectionsPatch Text
cpEnterpriseId
  = lens _cpEnterpriseId
      (\ s a -> s{_cpEnterpriseId = a})

-- | The ID of the collection.
cpCollectionId :: Lens' CollectionsPatch Text
cpCollectionId
  = lens _cpCollectionId
      (\ s a -> s{_cpCollectionId = a})

-- | Multipart request metadata.
cpPayload :: Lens' CollectionsPatch Collection
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

instance GoogleRequest CollectionsPatch where
        type Rs CollectionsPatch = Collection
        requestClient CollectionsPatch{..}
          = go _cpEnterpriseId _cpCollectionId (Just AltJSON)
              _cpPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsPatchResource)
                      mempty
