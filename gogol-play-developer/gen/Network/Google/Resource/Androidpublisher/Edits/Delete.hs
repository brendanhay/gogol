{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsDelete@.
module Network.Google.Resource.Androidpublisher.Edits.Delete
    (
    -- * REST Resource
      EditsDeleteResource

    -- * Creating a Request
    , editsDelete'
    , EditsDelete'

    -- * Request Lenses
    , edQuotaUser
    , edPrettyPrint
    , edPackageName
    , edUserIp
    , edKey
    , edOauthToken
    , edEditId
    , edFields
    , edAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsDelete@ which the
-- 'EditsDelete'' request conforms to.
type EditsDeleteResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes an edit for an app. Creating a new edit will automatically
-- delete any of your previous edits so this method need only be called if
-- you want to preemptively abandon an edit.
--
-- /See:/ 'editsDelete'' smart constructor.
data EditsDelete' = EditsDelete'
    { _edQuotaUser   :: !(Maybe Text)
    , _edPrettyPrint :: !Bool
    , _edPackageName :: !Text
    , _edUserIp      :: !(Maybe Text)
    , _edKey         :: !(Maybe Text)
    , _edOauthToken  :: !(Maybe Text)
    , _edEditId      :: !Text
    , _edFields      :: !(Maybe Text)
    , _edAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edQuotaUser'
--
-- * 'edPrettyPrint'
--
-- * 'edPackageName'
--
-- * 'edUserIp'
--
-- * 'edKey'
--
-- * 'edOauthToken'
--
-- * 'edEditId'
--
-- * 'edFields'
--
-- * 'edAlt'
editsDelete'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsDelete'
editsDelete' pEdPackageName_ pEdEditId_ =
    EditsDelete'
    { _edQuotaUser = Nothing
    , _edPrettyPrint = True
    , _edPackageName = pEdPackageName_
    , _edUserIp = Nothing
    , _edKey = Nothing
    , _edOauthToken = Nothing
    , _edEditId = pEdEditId_
    , _edFields = Nothing
    , _edAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
edQuotaUser :: Lens' EditsDelete' (Maybe Text)
edQuotaUser
  = lens _edQuotaUser (\ s a -> s{_edQuotaUser = a})

-- | Returns response with indentations and line breaks.
edPrettyPrint :: Lens' EditsDelete' Bool
edPrettyPrint
  = lens _edPrettyPrint
      (\ s a -> s{_edPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edPackageName :: Lens' EditsDelete' Text
edPackageName
  = lens _edPackageName
      (\ s a -> s{_edPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
edUserIp :: Lens' EditsDelete' (Maybe Text)
edUserIp = lens _edUserIp (\ s a -> s{_edUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
edKey :: Lens' EditsDelete' (Maybe Text)
edKey = lens _edKey (\ s a -> s{_edKey = a})

-- | OAuth 2.0 token for the current user.
edOauthToken :: Lens' EditsDelete' (Maybe Text)
edOauthToken
  = lens _edOauthToken (\ s a -> s{_edOauthToken = a})

-- | Unique identifier for this edit.
edEditId :: Lens' EditsDelete' Text
edEditId = lens _edEditId (\ s a -> s{_edEditId = a})

-- | Selector specifying which fields to include in a partial response.
edFields :: Lens' EditsDelete' (Maybe Text)
edFields = lens _edFields (\ s a -> s{_edFields = a})

-- | Data format for the response.
edAlt :: Lens' EditsDelete' Alt
edAlt = lens _edAlt (\ s a -> s{_edAlt = a})

instance GoogleRequest EditsDelete' where
        type Rs EditsDelete' = ()
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsDelete'{..}
          = go _edQuotaUser (Just _edPrettyPrint)
              _edPackageName
              _edUserIp
              _edKey
              _edOauthToken
              _edEditId
              _edFields
              (Just _edAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsDeleteResource)
                      r
                      u
