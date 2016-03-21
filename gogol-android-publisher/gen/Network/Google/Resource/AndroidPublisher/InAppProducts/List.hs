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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.list@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.List
    (
    -- * REST Resource
      InAppProductsListResource

    -- * Creating a Request
    , inAppProductsList
    , InAppProductsList

    -- * Request Lenses
    , iaplPackageName
    , iaplToken
    , iaplStartIndex
    , iaplMaxResults
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.inappproducts.list@ method which the
-- 'InAppProductsList' request conforms to.
type InAppProductsListResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "inappproducts" :>
               QueryParam "token" Text :>
                 QueryParam "startIndex" (Textual Word32) :>
                   QueryParam "maxResults" (Textual Word32) :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] InAppProductsListResponse

-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ 'inAppProductsList' smart constructor.
data InAppProductsList = InAppProductsList'
    { _iaplPackageName :: !Text
    , _iaplToken       :: !(Maybe Text)
    , _iaplStartIndex  :: !(Maybe (Textual Word32))
    , _iaplMaxResults  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplPackageName'
--
-- * 'iaplToken'
--
-- * 'iaplStartIndex'
--
-- * 'iaplMaxResults'
inAppProductsList
    :: Text -- ^ 'iaplPackageName'
    -> InAppProductsList
inAppProductsList pIaplPackageName_ =
    InAppProductsList'
    { _iaplPackageName = pIaplPackageName_
    , _iaplToken = Nothing
    , _iaplStartIndex = Nothing
    , _iaplMaxResults = Nothing
    }

-- | Unique identifier for the Android app with in-app products; for example,
-- \"com.spiffygame\".
iaplPackageName :: Lens' InAppProductsList Text
iaplPackageName
  = lens _iaplPackageName
      (\ s a -> s{_iaplPackageName = a})

iaplToken :: Lens' InAppProductsList (Maybe Text)
iaplToken
  = lens _iaplToken (\ s a -> s{_iaplToken = a})

iaplStartIndex :: Lens' InAppProductsList (Maybe Word32)
iaplStartIndex
  = lens _iaplStartIndex
      (\ s a -> s{_iaplStartIndex = a})
      . mapping _Coerce

iaplMaxResults :: Lens' InAppProductsList (Maybe Word32)
iaplMaxResults
  = lens _iaplMaxResults
      (\ s a -> s{_iaplMaxResults = a})
      . mapping _Coerce

instance GoogleRequest InAppProductsList where
        type Rs InAppProductsList = InAppProductsListResponse
        type Scopes InAppProductsList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient InAppProductsList'{..}
          = go _iaplPackageName _iaplToken _iaplStartIndex
              _iaplMaxResults
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy InAppProductsListResource)
                      mempty
