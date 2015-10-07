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
-- Module      : Network.Google.Resource.DoubleClickSearch.SavedColumns.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchSavedColumnsList@.
module Network.Google.Resource.DoubleClickSearch.SavedColumns.List
    (
    -- * REST Resource
      SavedColumnsListResource

    -- * Creating a Request
    , savedColumnsList'
    , SavedColumnsList'

    -- * Request Lenses
    , sclQuotaUser
    , sclPrettyPrint
    , sclAgencyId
    , sclUserIP
    , sclAdvertiserId
    , sclKey
    , sclOAuthToken
    , sclFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchSavedColumnsList@ method which the
-- 'SavedColumnsList'' request conforms to.
type SavedColumnsListResource =
     "agency" :>
       Capture "agencyId" Int64 :>
         "advertiser" :>
           Capture "advertiserId" Int64 :>
             "savedcolumns" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] SavedColumnList

-- | Retrieve the list of saved columns for a specified advertiser.
--
-- /See:/ 'savedColumnsList'' smart constructor.
data SavedColumnsList' = SavedColumnsList'
    { _sclQuotaUser    :: !(Maybe Text)
    , _sclPrettyPrint  :: !Bool
    , _sclAgencyId     :: !Int64
    , _sclUserIP       :: !(Maybe Text)
    , _sclAdvertiserId :: !Int64
    , _sclKey          :: !(Maybe AuthKey)
    , _sclOAuthToken   :: !(Maybe OAuthToken)
    , _sclFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SavedColumnsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclQuotaUser'
--
-- * 'sclPrettyPrint'
--
-- * 'sclAgencyId'
--
-- * 'sclUserIP'
--
-- * 'sclAdvertiserId'
--
-- * 'sclKey'
--
-- * 'sclOAuthToken'
--
-- * 'sclFields'
savedColumnsList'
    :: Int64 -- ^ 'agencyId'
    -> Int64 -- ^ 'advertiserId'
    -> SavedColumnsList'
savedColumnsList' pSclAgencyId_ pSclAdvertiserId_ =
    SavedColumnsList'
    { _sclQuotaUser = Nothing
    , _sclPrettyPrint = True
    , _sclAgencyId = pSclAgencyId_
    , _sclUserIP = Nothing
    , _sclAdvertiserId = pSclAdvertiserId_
    , _sclKey = Nothing
    , _sclOAuthToken = Nothing
    , _sclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sclQuotaUser :: Lens' SavedColumnsList' (Maybe Text)
sclQuotaUser
  = lens _sclQuotaUser (\ s a -> s{_sclQuotaUser = a})

-- | Returns response with indentations and line breaks.
sclPrettyPrint :: Lens' SavedColumnsList' Bool
sclPrettyPrint
  = lens _sclPrettyPrint
      (\ s a -> s{_sclPrettyPrint = a})

-- | DS ID of the agency.
sclAgencyId :: Lens' SavedColumnsList' Int64
sclAgencyId
  = lens _sclAgencyId (\ s a -> s{_sclAgencyId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sclUserIP :: Lens' SavedColumnsList' (Maybe Text)
sclUserIP
  = lens _sclUserIP (\ s a -> s{_sclUserIP = a})

-- | DS ID of the advertiser.
sclAdvertiserId :: Lens' SavedColumnsList' Int64
sclAdvertiserId
  = lens _sclAdvertiserId
      (\ s a -> s{_sclAdvertiserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sclKey :: Lens' SavedColumnsList' (Maybe AuthKey)
sclKey = lens _sclKey (\ s a -> s{_sclKey = a})

-- | OAuth 2.0 token for the current user.
sclOAuthToken :: Lens' SavedColumnsList' (Maybe OAuthToken)
sclOAuthToken
  = lens _sclOAuthToken
      (\ s a -> s{_sclOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sclFields :: Lens' SavedColumnsList' (Maybe Text)
sclFields
  = lens _sclFields (\ s a -> s{_sclFields = a})

instance GoogleAuth SavedColumnsList' where
        _AuthKey = sclKey . _Just
        _AuthToken = sclOAuthToken . _Just

instance GoogleRequest SavedColumnsList' where
        type Rs SavedColumnsList' = SavedColumnList
        request = requestWith doubleClickSearchRequest
        requestWith rq SavedColumnsList'{..}
          = go _sclAgencyId _sclAdvertiserId _sclQuotaUser
              (Just _sclPrettyPrint)
              _sclUserIP
              _sclFields
              _sclKey
              _sclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy SavedColumnsListResource)
                      rq
