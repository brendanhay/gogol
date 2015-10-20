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
-- Module      : Network.Google.Resource.AndroidPublisher.Entitlements.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s current inapp item or subscription entitlements
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.entitlements.list@.
module Network.Google.Resource.AndroidPublisher.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListResource

    -- * Creating a Request
    , entitlementsList
    , EntitlementsList

    -- * Request Lenses
    , elPackageName
    , elToken
    , elStartIndex
    , elProductId
    , elMaxResults
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.entitlements.list@ method which the
-- 'EntitlementsList' request conforms to.
type EntitlementsListResource =
     Capture "packageName" Text :>
       "entitlements" :>
         QueryParam "token" Text :>
           QueryParam "startIndex" Word32 :>
             QueryParam "productId" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] EntitlementsListResponse

-- | Lists the user\'s current inapp item or subscription entitlements
--
-- /See:/ 'entitlementsList' smart constructor.
data EntitlementsList = EntitlementsList
    { _elPackageName :: !Text
    , _elToken       :: !(Maybe Text)
    , _elStartIndex  :: !(Maybe Word32)
    , _elProductId   :: !(Maybe Text)
    , _elMaxResults  :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elPackageName'
--
-- * 'elToken'
--
-- * 'elStartIndex'
--
-- * 'elProductId'
--
-- * 'elMaxResults'
entitlementsList
    :: Text -- ^ 'elPackageName'
    -> EntitlementsList
entitlementsList pElPackageName_ =
    EntitlementsList
    { _elPackageName = pElPackageName_
    , _elToken = Nothing
    , _elStartIndex = Nothing
    , _elProductId = Nothing
    , _elMaxResults = Nothing
    }

-- | The package name of the application the inapp product was sold in (for
-- example, \'com.some.thing\').
elPackageName :: Lens' EntitlementsList Text
elPackageName
  = lens _elPackageName
      (\ s a -> s{_elPackageName = a})

elToken :: Lens' EntitlementsList (Maybe Text)
elToken = lens _elToken (\ s a -> s{_elToken = a})

elStartIndex :: Lens' EntitlementsList (Maybe Word32)
elStartIndex
  = lens _elStartIndex (\ s a -> s{_elStartIndex = a})

-- | The product id of the inapp product (for example, \'sku1\'). This can be
-- used to restrict the result set.
elProductId :: Lens' EntitlementsList (Maybe Text)
elProductId
  = lens _elProductId (\ s a -> s{_elProductId = a})

elMaxResults :: Lens' EntitlementsList (Maybe Word32)
elMaxResults
  = lens _elMaxResults (\ s a -> s{_elMaxResults = a})

instance GoogleRequest EntitlementsList where
        type Rs EntitlementsList = EntitlementsListResponse
        requestClient EntitlementsList{..}
          = go _elPackageName _elToken _elStartIndex
              _elProductId
              _elMaxResults
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsListResource)
                      mempty
