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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a collection. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsPatch@.
module Network.Google.Resource.AndroidEnterprise.Collections.Patch
    (
    -- * REST Resource
      CollectionsPatchResource

    -- * Creating a Request
    , collectionsPatch'
    , CollectionsPatch'

    -- * Request Lenses
    , colEnterpriseId
    , colCollectionId
    , colPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsPatch@ method which the
-- 'CollectionsPatch'' request conforms to.
type CollectionsPatchResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Collection :>
                 Patch '[JSON] Collection

-- | Updates a collection. This method supports patch semantics.
--
-- /See:/ 'collectionsPatch'' smart constructor.
data CollectionsPatch' = CollectionsPatch'
    { _colEnterpriseId :: !Text
    , _colCollectionId :: !Text
    , _colPayload      :: !Collection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colEnterpriseId'
--
-- * 'colCollectionId'
--
-- * 'colPayload'
collectionsPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Collection -- ^ 'payload'
    -> CollectionsPatch'
collectionsPatch' pColEnterpriseId_ pColCollectionId_ pColPayload_ =
    CollectionsPatch'
    { _colEnterpriseId = pColEnterpriseId_
    , _colCollectionId = pColCollectionId_
    , _colPayload = pColPayload_
    }

-- | The ID of the enterprise.
colEnterpriseId :: Lens' CollectionsPatch' Text
colEnterpriseId
  = lens _colEnterpriseId
      (\ s a -> s{_colEnterpriseId = a})

-- | The ID of the collection.
colCollectionId :: Lens' CollectionsPatch' Text
colCollectionId
  = lens _colCollectionId
      (\ s a -> s{_colCollectionId = a})

-- | Multipart request metadata.
colPayload :: Lens' CollectionsPatch' Collection
colPayload
  = lens _colPayload (\ s a -> s{_colPayload = a})

instance GoogleRequest CollectionsPatch' where
        type Rs CollectionsPatch' = Collection
        requestClient CollectionsPatch'{..}
          = go _colEnterpriseId _colCollectionId (Just AltJSON)
              _colPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsPatchResource)
                      mempty
