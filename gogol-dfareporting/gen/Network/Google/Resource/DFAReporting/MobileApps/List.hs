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
-- Module      : Network.Google.Resource.DFAReporting.MobileApps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of available mobile apps.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.mobileApps.list@.
module Network.Google.Resource.DFAReporting.MobileApps.List
    (
    -- * REST Resource
      MobileAppsListResource

    -- * Creating a Request
    , mobileAppsList
    , MobileAppsList

    -- * Request Lenses
    , malDirectories
    , malSearchString
    , malIds
    , malProFileId
    , malPageToken
    , malMaxResults
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileApps.list@ method which the
-- 'MobileAppsList' request conforms to.
type MobileAppsListResource =
     "dfareporting" :>
       "v3.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileApps" :>
               QueryParams "directories" MobileAppsListDirectories
                 :>
                 QueryParam "searchString" Text :>
                   QueryParams "ids" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] MobileAppsListResponse

-- | Retrieves list of available mobile apps.
--
-- /See:/ 'mobileAppsList' smart constructor.
data MobileAppsList = MobileAppsList'
    { _malDirectories  :: !(Maybe [MobileAppsListDirectories])
    , _malSearchString :: !(Maybe Text)
    , _malIds          :: !(Maybe [Text])
    , _malProFileId    :: !(Textual Int64)
    , _malPageToken    :: !(Maybe Text)
    , _malMaxResults   :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MobileAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malDirectories'
--
-- * 'malSearchString'
--
-- * 'malIds'
--
-- * 'malProFileId'
--
-- * 'malPageToken'
--
-- * 'malMaxResults'
mobileAppsList
    :: Int64 -- ^ 'malProFileId'
    -> MobileAppsList
mobileAppsList pMalProFileId_ =
    MobileAppsList'
    { _malDirectories = Nothing
    , _malSearchString = Nothing
    , _malIds = Nothing
    , _malProFileId = _Coerce # pMalProFileId_
    , _malPageToken = Nothing
    , _malMaxResults = 1000
    }

-- | Select only apps from these directories.
malDirectories :: Lens' MobileAppsList [MobileAppsListDirectories]
malDirectories
  = lens _malDirectories
      (\ s a -> s{_malDirectories = a})
      . _Default
      . _Coerce

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"app*2015\" will return objects with names like \"app Jan
-- 2018\", \"app Jan 2018\", or simply \"app 2018\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"app\" will match objects with
-- name \"my app\", \"app 2018\", or simply \"app\".
malSearchString :: Lens' MobileAppsList (Maybe Text)
malSearchString
  = lens _malSearchString
      (\ s a -> s{_malSearchString = a})

-- | Select only apps with these IDs.
malIds :: Lens' MobileAppsList [Text]
malIds
  = lens _malIds (\ s a -> s{_malIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
malProFileId :: Lens' MobileAppsList Int64
malProFileId
  = lens _malProFileId (\ s a -> s{_malProFileId = a})
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
malPageToken :: Lens' MobileAppsList (Maybe Text)
malPageToken
  = lens _malPageToken (\ s a -> s{_malPageToken = a})

-- | Maximum number of results to return.
malMaxResults :: Lens' MobileAppsList Int32
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})
      . _Coerce

instance GoogleRequest MobileAppsList where
        type Rs MobileAppsList = MobileAppsListResponse
        type Scopes MobileAppsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileAppsList'{..}
          = go _malProFileId (_malDirectories ^. _Default)
              _malSearchString
              (_malIds ^. _Default)
              _malPageToken
              (Just _malMaxResults)
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MobileAppsListResource)
                      mempty
