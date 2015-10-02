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
-- Module      : Network.Google.Resource.Mirror.Timeline.Attachments.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorTimelineAttachmentsGet@.
module Network.Google.Resource.Mirror.Timeline.Attachments.Get
    (
    -- * REST Resource
      TimelineAttachmentsGetResource

    -- * Creating a Request
    , timelineAttachmentsGet'
    , TimelineAttachmentsGet'

    -- * Request Lenses
    , tagQuotaUser
    , tagPrettyPrint
    , tagUserIP
    , tagItemId
    , tagAttachmentId
    , tagKey
    , tagOAuthToken
    , tagFields
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorTimelineAttachmentsGet@ which the
-- 'TimelineAttachmentsGet'' request conforms to.
type TimelineAttachmentsGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Attachment
       :<|>
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
                           QueryParam "alt" Media :> Get '[OctetStream] Stream

-- | Retrieves an attachment on a timeline item by item ID and attachment ID.
--
-- /See:/ 'timelineAttachmentsGet'' smart constructor.
data TimelineAttachmentsGet' = TimelineAttachmentsGet'
    { _tagQuotaUser    :: !(Maybe Text)
    , _tagPrettyPrint  :: !Bool
    , _tagUserIP       :: !(Maybe Text)
    , _tagItemId       :: !Text
    , _tagAttachmentId :: !Text
    , _tagKey          :: !(Maybe Key)
    , _tagOAuthToken   :: !(Maybe OAuthToken)
    , _tagFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TimelineAttachmentsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagQuotaUser'
--
-- * 'tagPrettyPrint'
--
-- * 'tagUserIP'
--
-- * 'tagItemId'
--
-- * 'tagAttachmentId'
--
-- * 'tagKey'
--
-- * 'tagOAuthToken'
--
-- * 'tagFields'
timelineAttachmentsGet'
    :: Text -- ^ 'itemId'
    -> Text -- ^ 'attachmentId'
    -> TimelineAttachmentsGet'
timelineAttachmentsGet' pTagItemId_ pTagAttachmentId_ =
    TimelineAttachmentsGet'
    { _tagQuotaUser = Nothing
    , _tagPrettyPrint = True
    , _tagUserIP = Nothing
    , _tagItemId = pTagItemId_
    , _tagAttachmentId = pTagAttachmentId_
    , _tagKey = Nothing
    , _tagOAuthToken = Nothing
    , _tagFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tagQuotaUser :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagQuotaUser
  = lens _tagQuotaUser (\ s a -> s{_tagQuotaUser = a})

-- | Returns response with indentations and line breaks.
tagPrettyPrint :: Lens' TimelineAttachmentsGet' Bool
tagPrettyPrint
  = lens _tagPrettyPrint
      (\ s a -> s{_tagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tagUserIP :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagUserIP
  = lens _tagUserIP (\ s a -> s{_tagUserIP = a})

-- | The ID of the timeline item the attachment belongs to.
tagItemId :: Lens' TimelineAttachmentsGet' Text
tagItemId
  = lens _tagItemId (\ s a -> s{_tagItemId = a})

-- | The ID of the attachment.
tagAttachmentId :: Lens' TimelineAttachmentsGet' Text
tagAttachmentId
  = lens _tagAttachmentId
      (\ s a -> s{_tagAttachmentId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tagKey :: Lens' TimelineAttachmentsGet' (Maybe Key)
tagKey = lens _tagKey (\ s a -> s{_tagKey = a})

-- | OAuth 2.0 token for the current user.
tagOAuthToken :: Lens' TimelineAttachmentsGet' (Maybe OAuthToken)
tagOAuthToken
  = lens _tagOAuthToken
      (\ s a -> s{_tagOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tagFields :: Lens' TimelineAttachmentsGet' (Maybe Text)
tagFields
  = lens _tagFields (\ s a -> s{_tagFields = a})

instance GoogleAuth TimelineAttachmentsGet' where
        authKey = tagKey . _Just
        authToken = tagOAuthToken . _Just

instance GoogleRequest TimelineAttachmentsGet' where
        type Rs TimelineAttachmentsGet' = Attachment
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsGet'{..}
          = go _tagItemId _tagAttachmentId _tagQuotaUser
              (Just _tagPrettyPrint)
              _tagUserIP
              _tagFields
              _tagKey
              _tagOAuthToken
              (Just AltJSON)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsGetResource)
                      r
                      u

instance GoogleRequest TimelineAttachmentsGet' where
        type Rs (Download TimelineAttachmentsGet') = Stream
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u TimelineAttachmentsGet'{..}
          = go _tagItemId _tagAttachmentId _tagQuotaUser
              (Just _tagPrettyPrint)
              _tagUserIP
              _tagFields
              _tagKey
              _tagOAuthToken
              (Just Media)
          where go :<|> _
                  = clientWithRoute
                      (Proxy :: Proxy TimelineAttachmentsGetResource)
                      r
                      u
