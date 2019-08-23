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
-- Module      : Network.Google.Resource.Analytics.Management.RemarketingAudience.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing audience.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.update@.
module Network.Google.Resource.Analytics.Management.RemarketingAudience.Update
    (
    -- * REST Resource
      ManagementRemarketingAudienceUpdateResource

    -- * Creating a Request
    , managementRemarketingAudienceUpdate
    , ManagementRemarketingAudienceUpdate

    -- * Request Lenses
    , mrauWebPropertyId
    , mrauPayload
    , mrauAccountId
    , mrauRemarketingAudienceId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.remarketingAudience.update@ method which the
-- 'ManagementRemarketingAudienceUpdate' request conforms to.
type ManagementRemarketingAudienceUpdateResource =
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
                           Put '[JSON] RemarketingAudience

-- | Updates an existing remarketing audience.
--
-- /See:/ 'managementRemarketingAudienceUpdate' smart constructor.
data ManagementRemarketingAudienceUpdate =
  ManagementRemarketingAudienceUpdate'
    { _mrauWebPropertyId         :: !Text
    , _mrauPayload               :: !RemarketingAudience
    , _mrauAccountId             :: !Text
    , _mrauRemarketingAudienceId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementRemarketingAudienceUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrauWebPropertyId'
--
-- * 'mrauPayload'
--
-- * 'mrauAccountId'
--
-- * 'mrauRemarketingAudienceId'
managementRemarketingAudienceUpdate
    :: Text -- ^ 'mrauWebPropertyId'
    -> RemarketingAudience -- ^ 'mrauPayload'
    -> Text -- ^ 'mrauAccountId'
    -> Text -- ^ 'mrauRemarketingAudienceId'
    -> ManagementRemarketingAudienceUpdate
managementRemarketingAudienceUpdate pMrauWebPropertyId_ pMrauPayload_ pMrauAccountId_ pMrauRemarketingAudienceId_ =
  ManagementRemarketingAudienceUpdate'
    { _mrauWebPropertyId = pMrauWebPropertyId_
    , _mrauPayload = pMrauPayload_
    , _mrauAccountId = pMrauAccountId_
    , _mrauRemarketingAudienceId = pMrauRemarketingAudienceId_
    }


-- | The web property ID of the remarketing audience to update.
mrauWebPropertyId :: Lens' ManagementRemarketingAudienceUpdate Text
mrauWebPropertyId
  = lens _mrauWebPropertyId
      (\ s a -> s{_mrauWebPropertyId = a})

-- | Multipart request metadata.
mrauPayload :: Lens' ManagementRemarketingAudienceUpdate RemarketingAudience
mrauPayload
  = lens _mrauPayload (\ s a -> s{_mrauPayload = a})

-- | The account ID of the remarketing audience to update.
mrauAccountId :: Lens' ManagementRemarketingAudienceUpdate Text
mrauAccountId
  = lens _mrauAccountId
      (\ s a -> s{_mrauAccountId = a})

-- | The ID of the remarketing audience to update.
mrauRemarketingAudienceId :: Lens' ManagementRemarketingAudienceUpdate Text
mrauRemarketingAudienceId
  = lens _mrauRemarketingAudienceId
      (\ s a -> s{_mrauRemarketingAudienceId = a})

instance GoogleRequest
           ManagementRemarketingAudienceUpdate
         where
        type Rs ManagementRemarketingAudienceUpdate =
             RemarketingAudience
        type Scopes ManagementRemarketingAudienceUpdate =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          ManagementRemarketingAudienceUpdate'{..}
          = go _mrauAccountId _mrauWebPropertyId
              _mrauRemarketingAudienceId
              (Just AltJSON)
              _mrauPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementRemarketingAudienceUpdateResource)
                      mempty
