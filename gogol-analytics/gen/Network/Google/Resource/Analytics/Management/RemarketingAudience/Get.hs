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
-- Module      : Network.Google.Resource.Analytics.Management.RemarketingAudience.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a remarketing audience to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.get@.
module Network.Google.Resource.Analytics.Management.RemarketingAudience.Get
    (
    -- * REST Resource
      ManagementRemarketingAudienceGetResource

    -- * Creating a Request
    , managementRemarketingAudienceGet
    , ManagementRemarketingAudienceGet

    -- * Request Lenses
    , mragWebPropertyId
    , mragAccountId
    , mragRemarketingAudienceId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.remarketingAudience.get@ method which the
-- 'ManagementRemarketingAudienceGet' request conforms to.
type ManagementRemarketingAudienceGetResource =
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
                         Get '[JSON] RemarketingAudience

-- | Gets a remarketing audience to which the user has access.
--
-- /See:/ 'managementRemarketingAudienceGet' smart constructor.
data ManagementRemarketingAudienceGet =
  ManagementRemarketingAudienceGet'
    { _mragWebPropertyId :: !Text
    , _mragAccountId :: !Text
    , _mragRemarketingAudienceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementRemarketingAudienceGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mragWebPropertyId'
--
-- * 'mragAccountId'
--
-- * 'mragRemarketingAudienceId'
managementRemarketingAudienceGet
    :: Text -- ^ 'mragWebPropertyId'
    -> Text -- ^ 'mragAccountId'
    -> Text -- ^ 'mragRemarketingAudienceId'
    -> ManagementRemarketingAudienceGet
managementRemarketingAudienceGet pMragWebPropertyId_ pMragAccountId_ pMragRemarketingAudienceId_ =
  ManagementRemarketingAudienceGet'
    { _mragWebPropertyId = pMragWebPropertyId_
    , _mragAccountId = pMragAccountId_
    , _mragRemarketingAudienceId = pMragRemarketingAudienceId_
    }


-- | The web property ID of the remarketing audience to retrieve.
mragWebPropertyId :: Lens' ManagementRemarketingAudienceGet Text
mragWebPropertyId
  = lens _mragWebPropertyId
      (\ s a -> s{_mragWebPropertyId = a})

-- | The account ID of the remarketing audience to retrieve.
mragAccountId :: Lens' ManagementRemarketingAudienceGet Text
mragAccountId
  = lens _mragAccountId
      (\ s a -> s{_mragAccountId = a})

-- | The ID of the remarketing audience to retrieve.
mragRemarketingAudienceId :: Lens' ManagementRemarketingAudienceGet Text
mragRemarketingAudienceId
  = lens _mragRemarketingAudienceId
      (\ s a -> s{_mragRemarketingAudienceId = a})

instance GoogleRequest
           ManagementRemarketingAudienceGet
         where
        type Rs ManagementRemarketingAudienceGet =
             RemarketingAudience
        type Scopes ManagementRemarketingAudienceGet =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementRemarketingAudienceGet'{..}
          = go _mragAccountId _mragWebPropertyId
              _mragRemarketingAudienceId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementRemarketingAudienceGetResource)
                      mempty
