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
-- Module      : Network.Google.Resource.DFAReporting.ChangeLogs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of change logs. This method supports paging.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.changeLogs.list@.
module Network.Google.Resource.DFAReporting.ChangeLogs.List
    (
    -- * REST Resource
      ChangeLogsListResource

    -- * Creating a Request
    , changeLogsList
    , ChangeLogsList

    -- * Request Lenses
    , cllUserProFileIds
    , cllXgafv
    , cllUploadProtocol
    , cllObjectType
    , cllAccessToken
    , cllSearchString
    , cllUploadType
    , cllIds
    , cllProFileId
    , cllAction
    , cllMinChangeTime
    , cllMaxChangeTime
    , cllPageToken
    , cllObjectIds
    , cllMaxResults
    , cllCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.changeLogs.list@ method which the
-- 'ChangeLogsList' request conforms to.
type ChangeLogsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "changeLogs" :>
               QueryParams "userProfileIds" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "objectType" ChangeLogsListObjectType :>
                       QueryParam "access_token" Text :>
                         QueryParam "searchString" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParams "ids" (Textual Int64) :>
                               QueryParam "action" ChangeLogsListAction :>
                                 QueryParam "minChangeTime" Text :>
                                   QueryParam "maxChangeTime" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParams "objectIds" (Textual Int64)
                                         :>
                                         QueryParam "maxResults" (Textual Int32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 ChangeLogsListResponse

-- | Retrieves a list of change logs. This method supports paging.
--
-- /See:/ 'changeLogsList' smart constructor.
data ChangeLogsList =
  ChangeLogsList'
    { _cllUserProFileIds :: !(Maybe [Textual Int64])
    , _cllXgafv :: !(Maybe Xgafv)
    , _cllUploadProtocol :: !(Maybe Text)
    , _cllObjectType :: !(Maybe ChangeLogsListObjectType)
    , _cllAccessToken :: !(Maybe Text)
    , _cllSearchString :: !(Maybe Text)
    , _cllUploadType :: !(Maybe Text)
    , _cllIds :: !(Maybe [Textual Int64])
    , _cllProFileId :: !(Textual Int64)
    , _cllAction :: !(Maybe ChangeLogsListAction)
    , _cllMinChangeTime :: !(Maybe Text)
    , _cllMaxChangeTime :: !(Maybe Text)
    , _cllPageToken :: !(Maybe Text)
    , _cllObjectIds :: !(Maybe [Textual Int64])
    , _cllMaxResults :: !(Textual Int32)
    , _cllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangeLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cllUserProFileIds'
--
-- * 'cllXgafv'
--
-- * 'cllUploadProtocol'
--
-- * 'cllObjectType'
--
-- * 'cllAccessToken'
--
-- * 'cllSearchString'
--
-- * 'cllUploadType'
--
-- * 'cllIds'
--
-- * 'cllProFileId'
--
-- * 'cllAction'
--
-- * 'cllMinChangeTime'
--
-- * 'cllMaxChangeTime'
--
-- * 'cllPageToken'
--
-- * 'cllObjectIds'
--
-- * 'cllMaxResults'
--
-- * 'cllCallback'
changeLogsList
    :: Int64 -- ^ 'cllProFileId'
    -> ChangeLogsList
changeLogsList pCllProFileId_ =
  ChangeLogsList'
    { _cllUserProFileIds = Nothing
    , _cllXgafv = Nothing
    , _cllUploadProtocol = Nothing
    , _cllObjectType = Nothing
    , _cllAccessToken = Nothing
    , _cllSearchString = Nothing
    , _cllUploadType = Nothing
    , _cllIds = Nothing
    , _cllProFileId = _Coerce # pCllProFileId_
    , _cllAction = Nothing
    , _cllMinChangeTime = Nothing
    , _cllMaxChangeTime = Nothing
    , _cllPageToken = Nothing
    , _cllObjectIds = Nothing
    , _cllMaxResults = 1000
    , _cllCallback = Nothing
    }


-- | Select only change logs with these user profile IDs.
cllUserProFileIds :: Lens' ChangeLogsList [Int64]
cllUserProFileIds
  = lens _cllUserProFileIds
      (\ s a -> s{_cllUserProFileIds = a})
      . _Default
      . _Coerce

-- | V1 error format.
cllXgafv :: Lens' ChangeLogsList (Maybe Xgafv)
cllXgafv = lens _cllXgafv (\ s a -> s{_cllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cllUploadProtocol :: Lens' ChangeLogsList (Maybe Text)
cllUploadProtocol
  = lens _cllUploadProtocol
      (\ s a -> s{_cllUploadProtocol = a})

-- | Select only change logs with the specified object type.
cllObjectType :: Lens' ChangeLogsList (Maybe ChangeLogsListObjectType)
cllObjectType
  = lens _cllObjectType
      (\ s a -> s{_cllObjectType = a})

-- | OAuth access token.
cllAccessToken :: Lens' ChangeLogsList (Maybe Text)
cllAccessToken
  = lens _cllAccessToken
      (\ s a -> s{_cllAccessToken = a})

-- | Select only change logs whose object ID, user name, old or new values
-- match the search string.
cllSearchString :: Lens' ChangeLogsList (Maybe Text)
cllSearchString
  = lens _cllSearchString
      (\ s a -> s{_cllSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cllUploadType :: Lens' ChangeLogsList (Maybe Text)
cllUploadType
  = lens _cllUploadType
      (\ s a -> s{_cllUploadType = a})

-- | Select only change logs with these IDs.
cllIds :: Lens' ChangeLogsList [Int64]
cllIds
  = lens _cllIds (\ s a -> s{_cllIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
cllProFileId :: Lens' ChangeLogsList Int64
cllProFileId
  = lens _cllProFileId (\ s a -> s{_cllProFileId = a})
      . _Coerce

-- | Select only change logs with the specified action.
cllAction :: Lens' ChangeLogsList (Maybe ChangeLogsListAction)
cllAction
  = lens _cllAction (\ s a -> s{_cllAction = a})

-- | Select only change logs whose change time is after the specified
-- minChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMinChangeTime :: Lens' ChangeLogsList (Maybe Text)
cllMinChangeTime
  = lens _cllMinChangeTime
      (\ s a -> s{_cllMinChangeTime = a})

-- | Select only change logs whose change time is before the specified
-- maxChangeTime.The time should be formatted as an RFC3339 date\/time
-- string. For example, for 10:54 PM on July 18th, 2015, in the
-- America\/New York time zone, the format is
-- \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the
-- letter T, the hour (24-hour clock system), minute, second, and then the
-- time zone offset.
cllMaxChangeTime :: Lens' ChangeLogsList (Maybe Text)
cllMaxChangeTime
  = lens _cllMaxChangeTime
      (\ s a -> s{_cllMaxChangeTime = a})

-- | Value of the nextPageToken from the previous result page.
cllPageToken :: Lens' ChangeLogsList (Maybe Text)
cllPageToken
  = lens _cllPageToken (\ s a -> s{_cllPageToken = a})

-- | Select only change logs with these object IDs.
cllObjectIds :: Lens' ChangeLogsList [Int64]
cllObjectIds
  = lens _cllObjectIds (\ s a -> s{_cllObjectIds = a})
      . _Default
      . _Coerce

-- | Maximum number of results to return.
cllMaxResults :: Lens' ChangeLogsList Int32
cllMaxResults
  = lens _cllMaxResults
      (\ s a -> s{_cllMaxResults = a})
      . _Coerce

-- | JSONP
cllCallback :: Lens' ChangeLogsList (Maybe Text)
cllCallback
  = lens _cllCallback (\ s a -> s{_cllCallback = a})

instance GoogleRequest ChangeLogsList where
        type Rs ChangeLogsList = ChangeLogsListResponse
        type Scopes ChangeLogsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient ChangeLogsList'{..}
          = go _cllProFileId (_cllUserProFileIds ^. _Default)
              _cllXgafv
              _cllUploadProtocol
              _cllObjectType
              _cllAccessToken
              _cllSearchString
              _cllUploadType
              (_cllIds ^. _Default)
              _cllAction
              _cllMinChangeTime
              _cllMaxChangeTime
              _cllPageToken
              (_cllObjectIds ^. _Default)
              (Just _cllMaxResults)
              _cllCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy ChangeLogsListResource)
                      mempty
