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
-- Module      : Network.Google.Resource.Analytics.Management.RemarketingAudience.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists remarketing audiences to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.list@.
module Network.Google.Resource.Analytics.Management.RemarketingAudience.List
    (
    -- * REST Resource
      ManagementRemarketingAudienceListResource

    -- * Creating a Request
    , managementRemarketingAudienceList
    , ManagementRemarketingAudienceList

    -- * Request Lenses
    , mralWebPropertyId
    , mralAccountId
    , mralType
    , mralStartIndex
    , mralMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.remarketingAudience.list@ method which the
-- 'ManagementRemarketingAudienceList' request conforms to.
type ManagementRemarketingAudienceListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "remarketingAudiences" :>
                     QueryParam "type" Text :>
                       QueryParam "start-index" (Textual Int32) :>
                         QueryParam "max-results" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RemarketingAudiences

-- | Lists remarketing audiences to which the user has access.
--
-- /See:/ 'managementRemarketingAudienceList' smart constructor.
data ManagementRemarketingAudienceList =
  ManagementRemarketingAudienceList'
    { _mralWebPropertyId :: !Text
    , _mralAccountId     :: !Text
    , _mralType          :: !Text
    , _mralStartIndex    :: !(Maybe (Textual Int32))
    , _mralMaxResults    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagementRemarketingAudienceList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mralWebPropertyId'
--
-- * 'mralAccountId'
--
-- * 'mralType'
--
-- * 'mralStartIndex'
--
-- * 'mralMaxResults'
managementRemarketingAudienceList
    :: Text -- ^ 'mralWebPropertyId'
    -> Text -- ^ 'mralAccountId'
    -> ManagementRemarketingAudienceList
managementRemarketingAudienceList pMralWebPropertyId_ pMralAccountId_ =
  ManagementRemarketingAudienceList'
    { _mralWebPropertyId = pMralWebPropertyId_
    , _mralAccountId = pMralAccountId_
    , _mralType = "all"
    , _mralStartIndex = Nothing
    , _mralMaxResults = Nothing
    }

-- | The web property ID of the remarketing audiences to retrieve.
mralWebPropertyId :: Lens' ManagementRemarketingAudienceList Text
mralWebPropertyId
  = lens _mralWebPropertyId
      (\ s a -> s{_mralWebPropertyId = a})

-- | The account ID of the remarketing audiences to retrieve.
mralAccountId :: Lens' ManagementRemarketingAudienceList Text
mralAccountId
  = lens _mralAccountId
      (\ s a -> s{_mralAccountId = a})

mralType :: Lens' ManagementRemarketingAudienceList Text
mralType = lens _mralType (\ s a -> s{_mralType = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mralStartIndex :: Lens' ManagementRemarketingAudienceList (Maybe Int32)
mralStartIndex
  = lens _mralStartIndex
      (\ s a -> s{_mralStartIndex = a})
      . mapping _Coerce

-- | The maximum number of remarketing audiences to include in this response.
mralMaxResults :: Lens' ManagementRemarketingAudienceList (Maybe Int32)
mralMaxResults
  = lens _mralMaxResults
      (\ s a -> s{_mralMaxResults = a})
      . mapping _Coerce

instance GoogleRequest
           ManagementRemarketingAudienceList
         where
        type Rs ManagementRemarketingAudienceList =
             RemarketingAudiences
        type Scopes ManagementRemarketingAudienceList =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementRemarketingAudienceList'{..}
          = go _mralAccountId _mralWebPropertyId
              (Just _mralType)
              _mralStartIndex
              _mralMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementRemarketingAudienceListResource)
                      mempty
