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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Files.Insert
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFilesInsert@.
module Network.Google.Resource.MapsEngine.Tables.Files.Insert
    (
    -- * REST Resource
      TablesFilesInsertResource

    -- * Creating a Request
    , tablesFilesInsert'
    , TablesFilesInsert'

    -- * Request Lenses
    , tfiQuotaUser
    , tfiPrettyPrint
    , tfiUserIP
    , tfiMedia
    , tfiKey
    , tfiId
    , tfiOAuthToken
    , tfiFilename
    , tfiFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFilesInsert@ which the
-- 'TablesFilesInsert'' request conforms to.
type TablesFilesInsertResource =
     "tables" :>
       Capture "id" Text :>
         "files" :>
           QueryParam "filename" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] Body :> Post '[JSON] ()

-- | Upload a file to a placeholder table asset. See Table Upload in the
-- Developer\'s Guide for more information. Supported file types are listed
-- in the Supported data formats and limits article of the Google Maps
-- Engine help center.
--
-- /See:/ 'tablesFilesInsert'' smart constructor.
data TablesFilesInsert' = TablesFilesInsert'
    { _tfiQuotaUser   :: !(Maybe Text)
    , _tfiPrettyPrint :: !Bool
    , _tfiUserIP      :: !(Maybe Text)
    , _tfiMedia       :: !Body
    , _tfiKey         :: !(Maybe AuthKey)
    , _tfiId          :: !Text
    , _tfiOAuthToken  :: !(Maybe OAuthToken)
    , _tfiFilename    :: !Text
    , _tfiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFilesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfiQuotaUser'
--
-- * 'tfiPrettyPrint'
--
-- * 'tfiUserIP'
--
-- * 'tfiMedia'
--
-- * 'tfiKey'
--
-- * 'tfiId'
--
-- * 'tfiOAuthToken'
--
-- * 'tfiFilename'
--
-- * 'tfiFields'
tablesFilesInsert'
    :: Body -- ^ 'media'
    -> Text -- ^ 'id'
    -> Text -- ^ 'filename'
    -> TablesFilesInsert'
tablesFilesInsert' pTfiMedia_ pTfiId_ pTfiFilename_ =
    TablesFilesInsert'
    { _tfiQuotaUser = Nothing
    , _tfiPrettyPrint = True
    , _tfiUserIP = Nothing
    , _tfiMedia = pTfiMedia_
    , _tfiKey = Nothing
    , _tfiId = pTfiId_
    , _tfiOAuthToken = Nothing
    , _tfiFilename = pTfiFilename_
    , _tfiFields = Nothing
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
tfiUserIP :: Lens' TablesFilesInsert' (Maybe Text)
tfiUserIP
  = lens _tfiUserIP (\ s a -> s{_tfiUserIP = a})

tfiMedia :: Lens' TablesFilesInsert' Body
tfiMedia = lens _tfiMedia (\ s a -> s{_tfiMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfiKey :: Lens' TablesFilesInsert' (Maybe AuthKey)
tfiKey = lens _tfiKey (\ s a -> s{_tfiKey = a})

-- | The ID of the table asset.
tfiId :: Lens' TablesFilesInsert' Text
tfiId = lens _tfiId (\ s a -> s{_tfiId = a})

-- | OAuth 2.0 token for the current user.
tfiOAuthToken :: Lens' TablesFilesInsert' (Maybe OAuthToken)
tfiOAuthToken
  = lens _tfiOAuthToken
      (\ s a -> s{_tfiOAuthToken = a})

-- | The file name of this uploaded file.
tfiFilename :: Lens' TablesFilesInsert' Text
tfiFilename
  = lens _tfiFilename (\ s a -> s{_tfiFilename = a})

-- | Selector specifying which fields to include in a partial response.
tfiFields :: Lens' TablesFilesInsert' (Maybe Text)
tfiFields
  = lens _tfiFields (\ s a -> s{_tfiFields = a})

instance GoogleAuth TablesFilesInsert' where
        authKey = tfiKey . _Just
        authToken = tfiOAuthToken . _Just

instance GoogleRequest TablesFilesInsert' where
        type Rs TablesFilesInsert' = ()
        request = requestWith mapsEngineRequest
        requestWith rq TablesFilesInsert'{..}
          = go _tfiId (Just _tfiFilename) _tfiQuotaUser
              (Just _tfiPrettyPrint)
              _tfiUserIP
              _tfiFields
              _tfiKey
              _tfiOAuthToken
              (Just AltJSON)
              _tfiMedia
          where go
                  = clientBuild
                      (Proxy :: Proxy TablesFilesInsertResource)
                      rq
