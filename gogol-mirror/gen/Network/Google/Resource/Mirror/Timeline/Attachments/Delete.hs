{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an attachment from a timeline item.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsDelete@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Delete
    (
    -- * REST Resource
      TimelineAttachmentsDeleteResource

    -- * Creating a Request
    , timelineAttachmentsDelete'
    , TimelineAttachmentsDelete'

    -- * Request Lenses
    , tadQuotaUser
    , tadPrettyPrint
    , tadUserIP
    , tadItemId
    , tadAttachmentId
    , tadKey
    , tadOAuthToken
    , tadFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsDelete@ which the
-- 'TimelineAttachmentsDelete'' request conforms to.
type TimelineAttachmentsDeleteResource =
     "timeline" :>
       Capture "itemId" Text :>
         "attachments" :>
           Capture "attachmentId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an attachment from a timeline item.
--
-- /See:/ 'timelineAttachmentsDelete'' smart constructor.
data TimelineAttachmentsDelete' = TimelineAttachmentsDelete'
    { _tadQuotaUser    :: !(Maybe Text)
    , _tadPrettyPrint  :: !Bool
    , _tadUserIP       :: !(Maybe Text)
    , _tadItemId       :: !Text
    , _tadAttachmentId :: !Text
    , _tadKey          :: !(Maybe Key)
    , _tadOAuthToken   :: !(Maybe OAuthToken)
    , _tadFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tadQuotaUser'
--
-- * 'tadPrettyPrint'
--
-- * 'tadUserIP'
--
-- * 'tadItemId'
--
-- * 'tadAttachmentId'
--
-- * 'tadKey'
--
-- * 'tadOAuthToken'
--
-- * 'tadFields'
timelineAttachmentsDelete'
    :: Text -- ^ 'itemId'
    -> Text -- ^ 'attachmentId'
    -> TimelineAttachmentsDelete'
timelineAttachmentsDelete' pTadItemId_ pTadAttachmentId_ =
    TimelineAttachmentsDelete'
    { _tadQuotaUser = Nothing
    , _tadPrettyPrint = True
    , _tadUserIP = Nothing
    , _tadItemId = pTadItemId_
    , _tadAttachmentId = pTadAttachmentId_
    , _tadKey = Nothing
    , _tadOAuthToken = Nothing
    , _tadFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tadQuotaUser :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadQuotaUser
  = lens _tadQuotaUser (\ s a -> s{_tadQuotaUser = a})

-- | Returns response with indentations and line breaks.
tadPrettyPrint :: Lens' TimelineAttachmentsDelete' Bool
tadPrettyPrint
  = lens _tadPrettyPrint
      (\ s a -> s{_tadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tadUserIP :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadUserIP
  = lens _tadUserIP (\ s a -> s{_tadUserIP = a})

-- | The ID of the timeline item the attachment belongs to.
tadItemId :: Lens' TimelineAttachmentsDelete' Text
tadItemId
  = lens _tadItemId (\ s a -> s{_tadItemId = a})

-- | The ID of the attachment.
tadAttachmentId :: Lens' TimelineAttachmentsDelete' Text
tadAttachmentId
  = lens _tadAttachmentId
      (\ s a -> s{_tadAttachmentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tadKey :: Lens' TimelineAttachmentsDelete' (Maybe Key)
tadKey = lens _tadKey (\ s a -> s{_tadKey = a})

-- | OAuth 2.0 token for the current user.
tadOAuthToken :: Lens' TimelineAttachmentsDelete' (Maybe OAuthToken)
tadOAuthToken
  = lens _tadOAuthToken
      (\ s a -> s{_tadOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tadFields :: Lens' TimelineAttachmentsDelete' (Maybe Text)
tadFields
  = lens _tadFields (\ s a -> s{_tadFields = a})

instance GoogleAuth TimelineAttachmentsDelete' where
        authKey = tadKey . _Just
        authToken = tadOAuthToken . _Just

instance GoogleRequest TimelineAttachmentsDelete'
         where
        type Rs TimelineAttachmentsDelete' = ()
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsDelete'{..}
          = go _tadItemId _tadAttachmentId _tadQuotaUser
              (Just _tadPrettyPrint)
              _tadUserIP
              _tadFields
              _tadKey
              _tadOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsDeleteResource)
                      r
                      u
