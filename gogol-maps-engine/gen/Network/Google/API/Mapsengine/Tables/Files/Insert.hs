{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Tables.Files.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.files.insert@.
module Network.Google.API.Mapsengine.Tables.Files.Insert
    (
    -- * REST Resource
      TablesFilesInsertAPI

    -- * Creating a Request
    , tablesFilesInsert'
    , TablesFilesInsert'

    -- * Request Lenses
    , tfiQuotaUser
    , tfiPrettyPrint
    , tfiUserIp
    , tfiKey
    , tfiId
    , tfiOauthToken
    , tfiFilename
    , tfiFields
    , tfiAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.tables.files.insert which the
-- 'TablesFilesInsert'' request conforms to.
type TablesFilesInsertAPI =
     "tables" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "filename" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
--
-- /See:/ 'tablesFilesInsert'' smart constructor.
data TablesFilesInsert' = TablesFilesInsert'
    { _tfiQuotaUser   :: !(Maybe Text)
    , _tfiPrettyPrint :: !Bool
    , _tfiUserIp      :: !(Maybe Text)
    , _tfiKey         :: !(Maybe Text)
    , _tfiId          :: !Text
    , _tfiOauthToken  :: !(Maybe Text)
    , _tfiFilename    :: !Text
    , _tfiFields      :: !(Maybe Text)
    , _tfiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfiQuotaUser'
--
-- * 'tfiPrettyPrint'
--
-- * 'tfiUserIp'
--
-- * 'tfiKey'
--
-- * 'tfiId'
--
-- * 'tfiOauthToken'
--
-- * 'tfiFilename'
--
-- * 'tfiFields'
--
-- * 'tfiAlt'
tablesFilesInsert'
    :: Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> TablesFilesInsert'
tablesFilesInsert' pTfiId_ pTfiFilename_ =
    TablesFilesInsert'
    { _tfiQuotaUser = Nothing
    , _tfiPrettyPrint = True
    , _tfiUserIp = Nothing
    , _tfiKey = Nothing
    , _tfiId = pTfiId_
    , _tfiOauthToken = Nothing
    , _tfiFilename = pTfiFilename_
    , _tfiFields = Nothing
    , _tfiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfiQuotaUser :: Lens' TablesFilesInsert' (Maybe Text)
tfiQuotaUser
  = lens _tfiQuotaUser (\ s a -> s{_tfiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfiPrettyPrint :: Lens' TablesFilesInsert' Bool
tfiPrettyPrint
  = lens _tfiPrettyPrint
      (\ s a -> s{_tfiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfiUserIp :: Lens' TablesFilesInsert' (Maybe Text)
tfiUserIp
  = lens _tfiUserIp (\ s a -> s{_tfiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfiKey :: Lens' TablesFilesInsert' (Maybe Text)
tfiKey = lens _tfiKey (\ s a -> s{_tfiKey = a})

-- | The ID of the table asset.
tfiId :: Lens' TablesFilesInsert' Text
tfiId = lens _tfiId (\ s a -> s{_tfiId = a})

-- | OAuth 2.0 token for the current user.
tfiOauthToken :: Lens' TablesFilesInsert' (Maybe Text)
tfiOauthToken
  = lens _tfiOauthToken
      (\ s a -> s{_tfiOauthToken = a})

-- | The file name of this uploaded file.
tfiFilename :: Lens' TablesFilesInsert' Text
tfiFilename
  = lens _tfiFilename (\ s a -> s{_tfiFilename = a})

-- | Selector specifying which fields to include in a partial response.
tfiFields :: Lens' TablesFilesInsert' (Maybe Text)
tfiFields
  = lens _tfiFields (\ s a -> s{_tfiFields = a})

-- | Data format for the response.
tfiAlt :: Lens' TablesFilesInsert' Alt
tfiAlt = lens _tfiAlt (\ s a -> s{_tfiAlt = a})

instance GoogleRequest TablesFilesInsert' where
        type Rs TablesFilesInsert' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesFilesInsert'{..}
          = go _tfiQuotaUser (Just _tfiPrettyPrint) _tfiUserIp
              _tfiKey
              _tfiId
              _tfiOauthToken
              (Just _tfiFilename)
              _tfiFields
              (Just _tfiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFilesInsertAPI)
                      r
                      u
