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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing custom dimension. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.patch@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Patch
    (
    -- * REST Resource
      ManagementCustomDimensionsPatchResource

    -- * Creating a Request
    , managementCustomDimensionsPatch
    , ManagementCustomDimensionsPatch

    -- * Request Lenses
    , mcdpWebPropertyId
    , mcdpIgnoreCustomDataSourceLinks
    , mcdpPayload
    , mcdpAccountId
    , mcdpCustomDimensionId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customDimensions.patch@ method which the
-- 'ManagementCustomDimensionsPatch' request conforms to.
type ManagementCustomDimensionsPatchResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customDimensions" :>
                     Capture "customDimensionId" Text :>
                       QueryParam "ignoreCustomDataSourceLinks" Bool :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] CustomDimension :>
                             Patch '[JSON] CustomDimension

-- | Updates an existing custom dimension. This method supports patch
-- semantics.
--
-- /See:/ 'managementCustomDimensionsPatch' smart constructor.
data ManagementCustomDimensionsPatch =
  ManagementCustomDimensionsPatch'
    { _mcdpWebPropertyId               :: !Text
    , _mcdpIgnoreCustomDataSourceLinks :: !Bool
    , _mcdpPayload                     :: !CustomDimension
    , _mcdpAccountId                   :: !Text
    , _mcdpCustomDimensionId           :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementCustomDimensionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdpWebPropertyId'
--
-- * 'mcdpIgnoreCustomDataSourceLinks'
--
-- * 'mcdpPayload'
--
-- * 'mcdpAccountId'
--
-- * 'mcdpCustomDimensionId'
managementCustomDimensionsPatch
    :: Text -- ^ 'mcdpWebPropertyId'
    -> CustomDimension -- ^ 'mcdpPayload'
    -> Text -- ^ 'mcdpAccountId'
    -> Text -- ^ 'mcdpCustomDimensionId'
    -> ManagementCustomDimensionsPatch
managementCustomDimensionsPatch pMcdpWebPropertyId_ pMcdpPayload_ pMcdpAccountId_ pMcdpCustomDimensionId_ =
  ManagementCustomDimensionsPatch'
    { _mcdpWebPropertyId = pMcdpWebPropertyId_
    , _mcdpIgnoreCustomDataSourceLinks = False
    , _mcdpPayload = pMcdpPayload_
    , _mcdpAccountId = pMcdpAccountId_
    , _mcdpCustomDimensionId = pMcdpCustomDimensionId_
    }


-- | Web property ID for the custom dimension to update.
mcdpWebPropertyId :: Lens' ManagementCustomDimensionsPatch Text
mcdpWebPropertyId
  = lens _mcdpWebPropertyId
      (\ s a -> s{_mcdpWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom dimension
-- being linked to a custom data source \/ data set.
mcdpIgnoreCustomDataSourceLinks :: Lens' ManagementCustomDimensionsPatch Bool
mcdpIgnoreCustomDataSourceLinks
  = lens _mcdpIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcdpIgnoreCustomDataSourceLinks = a})

-- | Multipart request metadata.
mcdpPayload :: Lens' ManagementCustomDimensionsPatch CustomDimension
mcdpPayload
  = lens _mcdpPayload (\ s a -> s{_mcdpPayload = a})

-- | Account ID for the custom dimension to update.
mcdpAccountId :: Lens' ManagementCustomDimensionsPatch Text
mcdpAccountId
  = lens _mcdpAccountId
      (\ s a -> s{_mcdpAccountId = a})

-- | Custom dimension ID for the custom dimension to update.
mcdpCustomDimensionId :: Lens' ManagementCustomDimensionsPatch Text
mcdpCustomDimensionId
  = lens _mcdpCustomDimensionId
      (\ s a -> s{_mcdpCustomDimensionId = a})

instance GoogleRequest
           ManagementCustomDimensionsPatch
         where
        type Rs ManagementCustomDimensionsPatch =
             CustomDimension
        type Scopes ManagementCustomDimensionsPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementCustomDimensionsPatch'{..}
          = go _mcdpAccountId _mcdpWebPropertyId
              _mcdpCustomDimensionId
              (Just _mcdpIgnoreCustomDataSourceLinks)
              (Just AltJSON)
              _mcdpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDimensionsPatchResource)
                      mempty
