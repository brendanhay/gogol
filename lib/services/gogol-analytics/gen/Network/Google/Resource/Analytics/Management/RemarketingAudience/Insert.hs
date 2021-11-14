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
-- Module      : Network.Google.Resource.Analytics.Management.RemarketingAudience.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new remarketing audience.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.insert@.
module Network.Google.Resource.Analytics.Management.RemarketingAudience.Insert
    (
    -- * REST Resource
      ManagementRemarketingAudienceInsertResource

    -- * Creating a Request
    , managementRemarketingAudienceInsert
    , ManagementRemarketingAudienceInsert

    -- * Request Lenses
    , mraiWebPropertyId
    , mraiPayload
    , mraiAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.remarketingAudience.insert@ method which the
-- 'ManagementRemarketingAudienceInsert' request conforms to.
type ManagementRemarketingAudienceInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "remarketingAudiences" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RemarketingAudience :>
                         Post '[JSON] RemarketingAudience

-- | Creates a new remarketing audience.
--
-- /See:/ 'managementRemarketingAudienceInsert' smart constructor.
data ManagementRemarketingAudienceInsert =
  ManagementRemarketingAudienceInsert'
    { _mraiWebPropertyId :: !Text
    , _mraiPayload :: !RemarketingAudience
    , _mraiAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementRemarketingAudienceInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mraiWebPropertyId'
--
-- * 'mraiPayload'
--
-- * 'mraiAccountId'
managementRemarketingAudienceInsert
    :: Text -- ^ 'mraiWebPropertyId'
    -> RemarketingAudience -- ^ 'mraiPayload'
    -> Text -- ^ 'mraiAccountId'
    -> ManagementRemarketingAudienceInsert
managementRemarketingAudienceInsert pMraiWebPropertyId_ pMraiPayload_ pMraiAccountId_ =
  ManagementRemarketingAudienceInsert'
    { _mraiWebPropertyId = pMraiWebPropertyId_
    , _mraiPayload = pMraiPayload_
    , _mraiAccountId = pMraiAccountId_
    }


-- | Web property ID for which to create the remarketing audience.
mraiWebPropertyId :: Lens' ManagementRemarketingAudienceInsert Text
mraiWebPropertyId
  = lens _mraiWebPropertyId
      (\ s a -> s{_mraiWebPropertyId = a})

-- | Multipart request metadata.
mraiPayload :: Lens' ManagementRemarketingAudienceInsert RemarketingAudience
mraiPayload
  = lens _mraiPayload (\ s a -> s{_mraiPayload = a})

-- | The account ID for which to create the remarketing audience.
mraiAccountId :: Lens' ManagementRemarketingAudienceInsert Text
mraiAccountId
  = lens _mraiAccountId
      (\ s a -> s{_mraiAccountId = a})

instance GoogleRequest
           ManagementRemarketingAudienceInsert
         where
        type Rs ManagementRemarketingAudienceInsert =
             RemarketingAudience
        type Scopes ManagementRemarketingAudienceInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          ManagementRemarketingAudienceInsert'{..}
          = go _mraiAccountId _mraiWebPropertyId (Just AltJSON)
              _mraiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementRemarketingAudienceInsertResource)
                      mempty
