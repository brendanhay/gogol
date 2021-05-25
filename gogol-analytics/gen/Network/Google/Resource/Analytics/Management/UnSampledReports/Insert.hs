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
-- Module      : Network.Google.Resource.Analytics.Management.UnSampledReports.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.insert@.
module Network.Google.Resource.Analytics.Management.UnSampledReports.Insert
    (
    -- * REST Resource
      ManagementUnSampledReportsInsertResource

    -- * Creating a Request
    , managementUnSampledReportsInsert
    , ManagementUnSampledReportsInsert

    -- * Request Lenses
    , musriWebPropertyId
    , musriProFileId
    , musriPayload
    , musriAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.unsampledReports.insert@ method which the
-- 'ManagementUnSampledReportsInsert' request conforms to.
type ManagementUnSampledReportsInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "unsampledReports" :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UnSampledReport :>
                             Post '[JSON] UnSampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'managementUnSampledReportsInsert' smart constructor.
data ManagementUnSampledReportsInsert =
  ManagementUnSampledReportsInsert'
    { _musriWebPropertyId :: !Text
    , _musriProFileId :: !Text
    , _musriPayload :: !UnSampledReport
    , _musriAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementUnSampledReportsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'musriWebPropertyId'
--
-- * 'musriProFileId'
--
-- * 'musriPayload'
--
-- * 'musriAccountId'
managementUnSampledReportsInsert
    :: Text -- ^ 'musriWebPropertyId'
    -> Text -- ^ 'musriProFileId'
    -> UnSampledReport -- ^ 'musriPayload'
    -> Text -- ^ 'musriAccountId'
    -> ManagementUnSampledReportsInsert
managementUnSampledReportsInsert pMusriWebPropertyId_ pMusriProFileId_ pMusriPayload_ pMusriAccountId_ =
  ManagementUnSampledReportsInsert'
    { _musriWebPropertyId = pMusriWebPropertyId_
    , _musriProFileId = pMusriProFileId_
    , _musriPayload = pMusriPayload_
    , _musriAccountId = pMusriAccountId_
    }


-- | Web property ID to create the unsampled report for.
musriWebPropertyId :: Lens' ManagementUnSampledReportsInsert Text
musriWebPropertyId
  = lens _musriWebPropertyId
      (\ s a -> s{_musriWebPropertyId = a})

-- | View (Profile) ID to create the unsampled report for.
musriProFileId :: Lens' ManagementUnSampledReportsInsert Text
musriProFileId
  = lens _musriProFileId
      (\ s a -> s{_musriProFileId = a})

-- | Multipart request metadata.
musriPayload :: Lens' ManagementUnSampledReportsInsert UnSampledReport
musriPayload
  = lens _musriPayload (\ s a -> s{_musriPayload = a})

-- | Account ID to create the unsampled report for.
musriAccountId :: Lens' ManagementUnSampledReportsInsert Text
musriAccountId
  = lens _musriAccountId
      (\ s a -> s{_musriAccountId = a})

instance GoogleRequest
           ManagementUnSampledReportsInsert
         where
        type Rs ManagementUnSampledReportsInsert =
             UnSampledReport
        type Scopes ManagementUnSampledReportsInsert =
             '["https://www.googleapis.com/auth/analytics",
               "https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementUnSampledReportsInsert'{..}
          = go _musriAccountId _musriWebPropertyId
              _musriProFileId
              (Just AltJSON)
              _musriPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementUnSampledReportsInsertResource)
                      mempty
