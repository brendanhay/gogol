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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a custom dimension to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsGet@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Get
    (
    -- * REST Resource
      ManagementCustomDimensionsGetResource

    -- * Creating a Request
    , managementCustomDimensionsGet'
    , ManagementCustomDimensionsGet'

    -- * Request Lenses
    , mcdgWebPropertyId
    , mcdgAccountId
    , mcdgCustomDimensionId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsGet@ method which the
-- 'ManagementCustomDimensionsGet'' request conforms to.
type ManagementCustomDimensionsGetResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 Capture "customDimensionId" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] CustomDimension

-- | Get a custom dimension to which the user has access.
--
-- /See:/ 'managementCustomDimensionsGet'' smart constructor.
data ManagementCustomDimensionsGet' = ManagementCustomDimensionsGet'
    { _mcdgWebPropertyId     :: !Text
    , _mcdgAccountId         :: !Text
    , _mcdgCustomDimensionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdgWebPropertyId'
--
-- * 'mcdgAccountId'
--
-- * 'mcdgCustomDimensionId'
managementCustomDimensionsGet'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsGet'
managementCustomDimensionsGet' pMcdgWebPropertyId_ pMcdgAccountId_ pMcdgCustomDimensionId_ =
    ManagementCustomDimensionsGet'
    { _mcdgWebPropertyId = pMcdgWebPropertyId_
    , _mcdgAccountId = pMcdgAccountId_
    , _mcdgCustomDimensionId = pMcdgCustomDimensionId_
    }

-- | Web property ID for the custom dimension to retrieve.
mcdgWebPropertyId :: Lens' ManagementCustomDimensionsGet' Text
mcdgWebPropertyId
  = lens _mcdgWebPropertyId
      (\ s a -> s{_mcdgWebPropertyId = a})

-- | Account ID for the custom dimension to retrieve.
mcdgAccountId :: Lens' ManagementCustomDimensionsGet' Text
mcdgAccountId
  = lens _mcdgAccountId
      (\ s a -> s{_mcdgAccountId = a})

-- | The ID of the custom dimension to retrieve.
mcdgCustomDimensionId :: Lens' ManagementCustomDimensionsGet' Text
mcdgCustomDimensionId
  = lens _mcdgCustomDimensionId
      (\ s a -> s{_mcdgCustomDimensionId = a})

instance GoogleRequest ManagementCustomDimensionsGet'
         where
        type Rs ManagementCustomDimensionsGet' =
             CustomDimension
        requestClient ManagementCustomDimensionsGet'{..}
          = go _mcdgAccountId _mcdgWebPropertyId
              _mcdgCustomDimensionId
              (Just AltJSON)
              analytics
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDimensionsGetResource)
                      mempty
