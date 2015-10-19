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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.insert@.
module Network.Google.Resource.AndroidEnterprise.Collections.Insert
    (
    -- * REST Resource
      CollectionsInsertResource

    -- * Creating a Request
    , collectionsInsert'
    , CollectionsInsert'

    -- * Request Lenses
    , ciEnterpriseId
    , ciPayload
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.collections.insert@ method which the
-- 'CollectionsInsert'' request conforms to.
type CollectionsInsertResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Collection :> Post '[JSON] Collection

-- | Creates a new collection.
--
-- /See:/ 'collectionsInsert'' smart constructor.
data CollectionsInsert' = CollectionsInsert'
    { _ciEnterpriseId :: !Text
    , _ciPayload      :: !Collection
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciEnterpriseId'
--
-- * 'ciPayload'
collectionsInsert'
    :: Text -- ^ 'ciEnterpriseId'
    -> Collection -- ^ 'ciPayload'
    -> CollectionsInsert'
collectionsInsert' pCiEnterpriseId_ pCiPayload_ =
    CollectionsInsert'
    { _ciEnterpriseId = pCiEnterpriseId_
    , _ciPayload = pCiPayload_
    }

-- | The ID of the enterprise.
ciEnterpriseId :: Lens' CollectionsInsert' Text
ciEnterpriseId
  = lens _ciEnterpriseId
      (\ s a -> s{_ciEnterpriseId = a})

-- | Multipart request metadata.
ciPayload :: Lens' CollectionsInsert' Collection
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest CollectionsInsert' where
        type Rs CollectionsInsert' = Collection
        requestClient CollectionsInsert'{..}
          = go _ciEnterpriseId (Just AltJSON) _ciPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy CollectionsInsertResource)
                      mempty
