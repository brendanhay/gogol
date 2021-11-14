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
-- Module      : Network.Google.Resource.Analytics.Management.RemarketingAudience.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing audience. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.patch@.
module Network.Google.Resource.Analytics.Management.RemarketingAudience.Patch
    (
    -- * REST Resource
      ManagementRemarketingAudiencePatchResource

    -- * Creating a Request
    , managementRemarketingAudiencePatch
    , ManagementRemarketingAudiencePatch

    -- * Request Lenses
    , mrapWebPropertyId
    , mrapPayload
    , mrapAccountId
    , mrapRemarketingAudienceId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.remarketingAudience.patch@ method which the
-- 'ManagementRemarketingAudiencePatch' request conforms to.
type ManagementRemarketingAudiencePatchResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "remarketingAudiences" :>
                     Capture "remarketingAudienceId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] RemarketingAudience :>
                           Patch '[JSON] RemarketingAudience

-- | Updates an existing remarketing audience. This method supports patch
-- semantics.
--
-- /See:/ 'managementRemarketingAudiencePatch' smart constructor.
data ManagementRemarketingAudiencePatch =
  ManagementRemarketingAudiencePatch'
    { _mrapWebPropertyId :: !Text
    , _mrapPayload :: !RemarketingAudience
    , _mrapAccountId :: !Text
    , _mrapRemarketingAudienceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementRemarketingAudiencePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrapWebPropertyId'
--
-- * 'mrapPayload'
--
-- * 'mrapAccountId'
--
-- * 'mrapRemarketingAudienceId'
managementRemarketingAudiencePatch
    :: Text -- ^ 'mrapWebPropertyId'
    -> RemarketingAudience -- ^ 'mrapPayload'
    -> Text -- ^ 'mrapAccountId'
    -> Text -- ^ 'mrapRemarketingAudienceId'
    -> ManagementRemarketingAudiencePatch
managementRemarketingAudiencePatch pMrapWebPropertyId_ pMrapPayload_ pMrapAccountId_ pMrapRemarketingAudienceId_ =
  ManagementRemarketingAudiencePatch'
    { _mrapWebPropertyId = pMrapWebPropertyId_
    , _mrapPayload = pMrapPayload_
    , _mrapAccountId = pMrapAccountId_
    , _mrapRemarketingAudienceId = pMrapRemarketingAudienceId_
    }


-- | The web property ID of the remarketing audience to update.
mrapWebPropertyId :: Lens' ManagementRemarketingAudiencePatch Text
mrapWebPropertyId
  = lens _mrapWebPropertyId
      (\ s a -> s{_mrapWebPropertyId = a})

-- | Multipart request metadata.
mrapPayload :: Lens' ManagementRemarketingAudiencePatch RemarketingAudience
mrapPayload
  = lens _mrapPayload (\ s a -> s{_mrapPayload = a})

-- | The account ID of the remarketing audience to update.
mrapAccountId :: Lens' ManagementRemarketingAudiencePatch Text
mrapAccountId
  = lens _mrapAccountId
      (\ s a -> s{_mrapAccountId = a})

-- | The ID of the remarketing audience to update.
mrapRemarketingAudienceId :: Lens' ManagementRemarketingAudiencePatch Text
mrapRemarketingAudienceId
  = lens _mrapRemarketingAudienceId
      (\ s a -> s{_mrapRemarketingAudienceId = a})

instance GoogleRequest
           ManagementRemarketingAudiencePatch
         where
        type Rs ManagementRemarketingAudiencePatch =
             RemarketingAudience
        type Scopes ManagementRemarketingAudiencePatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementRemarketingAudiencePatch'{..}
          = go _mrapAccountId _mrapWebPropertyId
              _mrapRemarketingAudienceId
              (Just AltJSON)
              _mrapPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementRemarketingAudiencePatchResource)
                      mempty
