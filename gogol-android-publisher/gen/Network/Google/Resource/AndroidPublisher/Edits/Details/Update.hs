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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates app details for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsDetailsUpdate@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Update
    (
    -- * REST Resource
      EditsDetailsUpdateResource

    -- * Creating a Request
    , editsDetailsUpdate'
    , EditsDetailsUpdate'

    -- * Request Lenses
    , eduQuotaUser
    , eduPrettyPrint
    , eduPackageName
    , eduUserIP
    , eduPayload
    , eduKey
    , eduOAuthToken
    , eduEditId
    , eduFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsDetailsUpdate@ method which the
-- 'EditsDetailsUpdate'' request conforms to.
type EditsDetailsUpdateResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "details" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AppDetails :> Put '[JSON] AppDetails

-- | Updates app details for this edit.
--
-- /See:/ 'editsDetailsUpdate'' smart constructor.
data EditsDetailsUpdate' = EditsDetailsUpdate'
    { _eduQuotaUser   :: !(Maybe Text)
    , _eduPrettyPrint :: !Bool
    , _eduPackageName :: !Text
    , _eduUserIP      :: !(Maybe Text)
    , _eduPayload     :: !AppDetails
    , _eduKey         :: !(Maybe AuthKey)
    , _eduOAuthToken  :: !(Maybe OAuthToken)
    , _eduEditId      :: !Text
    , _eduFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eduQuotaUser'
--
-- * 'eduPrettyPrint'
--
-- * 'eduPackageName'
--
-- * 'eduUserIP'
--
-- * 'eduPayload'
--
-- * 'eduKey'
--
-- * 'eduOAuthToken'
--
-- * 'eduEditId'
--
-- * 'eduFields'
editsDetailsUpdate'
    :: Text -- ^ 'packageName'
    -> AppDetails -- ^ 'payload'
    -> Text -- ^ 'editId'
    -> EditsDetailsUpdate'
editsDetailsUpdate' pEduPackageName_ pEduPayload_ pEduEditId_ =
    EditsDetailsUpdate'
    { _eduQuotaUser = Nothing
    , _eduPrettyPrint = True
    , _eduPackageName = pEduPackageName_
    , _eduUserIP = Nothing
    , _eduPayload = pEduPayload_
    , _eduKey = Nothing
    , _eduOAuthToken = Nothing
    , _eduEditId = pEduEditId_
    , _eduFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eduQuotaUser :: Lens' EditsDetailsUpdate' (Maybe Text)
eduQuotaUser
  = lens _eduQuotaUser (\ s a -> s{_eduQuotaUser = a})

-- | Returns response with indentations and line breaks.
eduPrettyPrint :: Lens' EditsDetailsUpdate' Bool
eduPrettyPrint
  = lens _eduPrettyPrint
      (\ s a -> s{_eduPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eduPackageName :: Lens' EditsDetailsUpdate' Text
eduPackageName
  = lens _eduPackageName
      (\ s a -> s{_eduPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eduUserIP :: Lens' EditsDetailsUpdate' (Maybe Text)
eduUserIP
  = lens _eduUserIP (\ s a -> s{_eduUserIP = a})

-- | Multipart request metadata.
eduPayload :: Lens' EditsDetailsUpdate' AppDetails
eduPayload
  = lens _eduPayload (\ s a -> s{_eduPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eduKey :: Lens' EditsDetailsUpdate' (Maybe AuthKey)
eduKey = lens _eduKey (\ s a -> s{_eduKey = a})

-- | OAuth 2.0 token for the current user.
eduOAuthToken :: Lens' EditsDetailsUpdate' (Maybe OAuthToken)
eduOAuthToken
  = lens _eduOAuthToken
      (\ s a -> s{_eduOAuthToken = a})

-- | Unique identifier for this edit.
eduEditId :: Lens' EditsDetailsUpdate' Text
eduEditId
  = lens _eduEditId (\ s a -> s{_eduEditId = a})

-- | Selector specifying which fields to include in a partial response.
eduFields :: Lens' EditsDetailsUpdate' (Maybe Text)
eduFields
  = lens _eduFields (\ s a -> s{_eduFields = a})

instance GoogleAuth EditsDetailsUpdate' where
        _AuthKey = eduKey . _Just
        _AuthToken = eduOAuthToken . _Just

instance GoogleRequest EditsDetailsUpdate' where
        type Rs EditsDetailsUpdate' = AppDetails
        request = requestWith androidPublisherRequest
        requestWith rq EditsDetailsUpdate'{..}
          = go _eduPackageName _eduEditId _eduQuotaUser
              (Just _eduPrettyPrint)
              _eduUserIP
              _eduFields
              _eduKey
              _eduOAuthToken
              (Just AltJSON)
              _eduPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsDetailsUpdateResource)
                      rq
